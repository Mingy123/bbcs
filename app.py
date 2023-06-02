from flask import Flask, request, abort, send_from_directory
import sqlite3, json

app = Flask(__name__)
DATABASE = 'db'


def valid_cred(username: str, password: int, conn):
    query = conn.execute("select username from users where" +
        f"username == '{username}' and password == {password}").fetchall()
    return bool(query)


# returns 200 "success" for success
# returns 403 if user already exists
@app.route("/create-user", methods=["POST"])
def create_user():
    username = request.form.get("username").replace("'", "''")
    password = hash(request.form.get("password"))
    # check whether the username is added to the list or not 
    conn = sqlite3.connect(DATABASE)
    try:
        conn.execute(f"insert into users values('{username}', {password}, '')")
    except sqlite3.IntegrityError:
        abort(403)
    conn.commit()
    conn.close()
    return "success"


# returns 200 "success" if the credentials are valid
# returns 403 if invalid
@app.route("/check-login")
def check_login():
    username = request.args.get("username").replace("'", "''")
    password = hash(request.form.get("password"))
    conn = sqlite3.connect(DATABASE)
    if not valid_cred(username, password, conn): abort(403)
    return "success"


# TODO
@app.route("/recommend")
def recommend():
    username = request.headers.get("X-Username").replace("'", "''")
    password = hash(request.headers.get("X-Password"))
    conn = sqlite3.connect(DATABASE)
    if not valid_cred(username, password, conn): abort(403)
    ## AZAZO GIVE AI
    return "todo"

# returns ["item_name", "image_name", price, id]
# returns 403 if item doesnt exist
@app.route("/detail")
def item_detail():
    id = request.args.get('name').replace("'", "''")
    conn = sqlite3.connect(DATABASE)
    query = conn.execute(f"select * from items where name == '{id}").fetchall()
    if not query: abort(403)
    return json.dumps(query[0]) # or could i just straight up return this?

@app.route("/images/<path:file>")
def clothes_image(file):
    return send_from_directory('./VITON-HD/datasets/test/image', file)


@app.route("/viton/<path:file>", methods=["GET"])
def viton_out(file):
    return send_from_directory('./output', file)


@app.route("/viton", methods=["POST"])
def viton_in():
    file = request.files['file']
    file.save(request.form.get('name'))
    return "success"

@app.route("/")
def index():
    return """<form action="/viton" method="post">  
        <input type="file" name="file"/><br>
        <label for="name">Name:</label>
        <input type="text" name="name"><br>
        <input type="submit" value="Upload">
    </form>"""

if __name__ == "__main__":
    app.run(port=8000)