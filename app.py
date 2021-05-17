from flask import Flask, session, render_template, request ,redirect , url_for, jsonify
import psycopg2

app = Flask(__name__)

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


if __name__ == "__main__": 
    app.run()              