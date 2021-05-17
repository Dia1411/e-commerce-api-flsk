from flask import Flask, session, render_template, request ,redirect , url_for, jsonify
from flask_cors import CORS
import psycopg2

app = Flask(__name__)
cors = CORS(app)


@app.route("/")                   
def hello():      

    conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")
    cursor = conn.cursor()      

    cursor.execute(f"SELECT id, departament, category FROM categories")

    data = cursor.fetchall()

    columns = ('id', 'departament', 'category')

    response = []

    for u in data: 
        response.append(dict(zip(columns, u)))

    return jsonify(response)


@app.route("/categories" , methods=["POST"])
def categories(): 

    if request.method == "POST":
        category = request.form.get('category')
        print(category)
        return jsonify(category)
    else:
        return jsonify("Karin")


if __name__ == "__main__": 
    app.run()              
