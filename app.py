from flask import Flask, request, abort, send_from_directory
from hashlib import sha256
from uuid import uuid4
import sqlite3, json, random, os

from sklearn.neighbors import NearestNeighbors
import pandas as pd
import numpy as np

app = Flask(__name__)
DATABASE = 'db'
LOCKFILE = '.VITON-lock'
ITEM_IDS = [867579,764751,554450,840588,616504,742924,597963,739669,468480,721491,572845,781135,697054,567638,865457,757552,737486,749499,478943,631258,694046,885239,738401,695421,885624,914956,623698,541097,767577,839673,610568,707100,881786,818673,578626,544739,611503,857413,626816,757700,837686,617822,541308,629420,554541,711034,893795,596400,729931,511923,574500,596508,503338,875105,861036,929506,813898,826492,810893,902980,660300,757872,778784,770177,617534,814198,625918,572106,729318,598049,788773,387426,767950,615247,703260,685712,870958,585716,679113,731128,609715,632534,806185,215337,825748,898192,771826,651368,801938,616249,667416,607046,786020,826150,785948,739851,730863,907396,532578,676267]

embeddings = pd.read_csv("embeddings.csv")
embeddings["embedding"] = embeddings["embedding"].apply(
    lambda x: eval(x)
)
nn = NearestNeighbors(n_neighbors=20).fit(
    np.stack(embeddings["embedding"].tolist(), axis=0)
)


def valid_cred(username, password, conn):
    query = conn.execute(("select username from users where "
        f"username == '{username}' and password == '{password}'")).fetchall()
    return bool(query)


# returns 200 "success" for success
# returns 409 if user already exists
@app.route("/create-user", methods=["POST"])
def create_user():
    username = request.form.get("username").replace("'", "''")
    password = request.form.get("password")
    m = sha256()
    m.update(bytes(password, 'utf-8'))
    password = m.hexdigest()
    conn = sqlite3.connect(DATABASE)
    try:
        conn.execute(f"insert into users values('{username}', '{password}', '', '')")
    except sqlite3.IntegrityError:
        abort(409)
    conn.commit()
    conn.close()
    return "success"


# returns 200 "success" if the credentials are valid
# returns 401 if invalid
@app.route("/check-login")
def check_login():
    username = request.headers.get("X-Username").replace("'", "''")
    password = request.headers.get("X-Password")
    m = sha256()
    m.update(bytes(password, 'utf-8'))
    password = m.hexdigest()
    conn = sqlite3.connect(DATABASE)
    if not valid_cred(username, password, conn): abort(401)
    conn.close()
    return "success"


# returns a CSV if success
# returns 403 if login fails
@app.route("/viton-history")
def viton_history():
    username = request.headers.get("X-Username").replace("'", "''")
    password = request.headers.get("X-Password")
    m = sha256()
    m.update(bytes(password, 'utf-8'))
    password = m.hexdigest()
    conn = sqlite3.connect(DATABASE)
    query = conn.execute(("select viton_history from users where "
        f"username == '{username}' and password == '{password}'")).fetchall()
    conn.close()
    if not query: abort(403)
    return query[0][0][:-1]


# for this one i want to return a detailed list of every item
# essentially making /details useless
@app.route("/recommend")
def recommend():
    username = request.headers.get("X-Username").replace("'", "''")
    password = request.headers.get("X-Password")
    m = sha256()
    m.update(bytes(password, 'utf-8'))
    password = m.hexdigest()
    conn = sqlite3.connect(DATABASE)
    if not valid_cred(username, password, conn): abort(403)

    history = conn.execute(f"select purchase_history from users where "
        f"username == '{username}' and password == '{password}'").fetchall()[0][0][:-1]

    recco = []

    if history:
        purchase_history = [int(i.strip()) for i in conn.execute(f"select purchase_history from users where "
            f"username == '{username}' and password == '{password}'").fetchall()[0][0][:-1].split(",")]
        purchase_embeddings = embeddings.loc[embeddings["product_code"].isin(purchase_history)]
        average = np.average(purchase_embeddings["embedding"].tolist(), axis=0)
        distances, indices = nn.kneighbors(average.reshape(1, -1))
        recco = [ITEM_IDS[i] for i in indices[0].tolist()] # indices was [[2, 3, 4]] limit to 100

    # name, url, price, id, tags
    query = conn.execute("select * from items").fetchall()
    conn.close()
    not_inside = [i for i in ITEM_IDS if i not in recco]
    random.shuffle(not_inside)
    ans = []
    for i in recco:
        for j in query:
            if j[3] == i:
                ans.append({
                    "name": j[0],
                    "url": j[1],
                    "price": j[2],
                    "id": j[3],
                    "tags": j[4]
                })
    for i in query:
        if i[3] in not_inside:
            ans.append({
                "name": i[0],
                "url": i[1],
                "price": i[2],
                "id": i[3],
                "tags": i[4]
            })
    return json.dumps(ans)

# returns ["item_name", "image_name", price, id]
# returns 404 if item doesnt exist
@app.route("/detail")
def item_detail():
    id = request.args.get('name').replace("'", "''")
    conn = sqlite3.connect(DATABASE)
    query = conn.execute(f"select * from items where name == '{id}'").fetchall()
    conn.close()
    if not query: abort(404)
    return query[0]

# static fileserver
@app.route("/images/<path:file>")
def clothes_image(file):
    return send_from_directory('./VITON-HD/datasets/test/cloth', file)
@app.route("/viton/<path:file>", methods=["GET"])
def viton_out(file):
    return send_from_directory('./output', file)


# returns a uuid used to access the output later (GET /viton/{uuid}.png)
@app.route("/viton", methods=["POST"])
def viton_in():
    username = request.headers.get("X-Username").replace("'", "''")
    password = request.headers.get("X-Password")
    m = sha256()
    m.update(bytes(password, 'utf-8'))
    password = m.hexdigest()
    conn = sqlite3.connect(DATABASE)
    if not valid_cred(username, password, conn): abort(403)
    if os.path.exists(LOCKFILE): abort(423)
    # touch file
    with open(LOCKFILE, 'a'):
        os.utime(LOCKFILE, None)
    file = request.files['file']
    file.save('input')
    os.system('convert input input.jpg')
    name = request.form.get('name')
    pairs = open("VITON-HD/datasets/test_pairs.txt", 'w')
    pairs.write(f'user.jpg {name}.jpg')
    pairs.close()
    outfile = uuid4()
    conn.execute(f"update users set viton_history = viton_history || '{outfile},' where username == '{username}'")
    conn.commit()
    conn.close()
    os.system(f"bash -i main.sh {outfile} &")
    return str(outfile)

@app.route("/payment", methods=["POST"])
def payment():
    username = request.headers.get("X-Username").replace("'", "''")
    password = request.headers.get("X-Password")
    m = sha256()
    m.update(bytes(password, 'utf-8'))
    password = m.hexdigest()
    conn = sqlite3.connect(DATABASE)
    if not valid_cred(username, password, conn): abort(403)

    address = request.form.get("address")
    item = request.form.get("item")
    size = request.form.get("size")
    uuid = uuid4()
    conn.execute(f"insert into purchases values('{uuid}', '{address}', '{item}', '{size}', '{username}')")
    conn.execute(f"update users set purchase_history = purchase_history || '{item},' where username == '{username}'")
    conn.commit()
    conn.close()
    return str(uuid)


@app.route("/")
def index():
    return send_from_directory(".", "index.html")

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8000)