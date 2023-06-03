from flask import Flask, request, abort, send_from_directory
from hashlib import sha256
from uuid import uuid4
import sqlite3, json

app = Flask(__name__)
DATABASE = 'db'
LOCKFILE = '.VITON-lock'


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
    # check whether the username is added to the list or not 
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


# returns a string if success
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
    return query[0][0]


# TODO
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
    ## AZAZO GIVE AI
    conn.close()
    return "todo"

# returns ["item_name", "image_name", price, id]
# returns 404 if item doesnt exist
@app.route("/detail")
def item_detail():
    id = request.args.get('name').replace("'", "''")
    conn = sqlite3.connect(DATABASE)
    query = conn.execute(f"select * from items where name == '{id}'").fetchall()
    conn.close()
    if not query: abort(404)
    return json.dumps(query[0]) # or could i just straight up return this?

# static fileserver
@app.route("/images/<path:file>")
def clothes_image(file):
    return send_from_directory('./VITON-HD/datasets/test/image', file)
@app.route("/viton/<path:file>", methods=["GET"])
def viton_out(file):
    return send_from_directory('./output', file)


# returns a uuid used to access the output later
@app.route("/viton", methods=["POST"])
def viton_in():
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
    conn.execute(f"insert into puchases values('{uuid}', '{address}', '{item}', '{size}', '{username}')")
    conn.commit()
    conn.close()
    return uuid


@app.route("/")
def index():
    return send_from_directory(".", "index.html")

if __name__ == "__main__":
    app.run(port=8000)
