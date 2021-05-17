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


@app.route("/categories" , methods=["POST"])
def categories(): 

    if request.method == "POST":

        conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")
        cursor = conn.cursor()  

        category = request.form.get('category')

        command = f"SELECT id from categories WHERE category = '{category}'"

        cursor.execute(command)

        category_id = cursor.fetchall()[0][0]

        response = {"kategoria" : category, "filtrat" : []}

        filters = []

        cursor.execute(f"SELECT column_name FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'filter{category_id}';")

        fetched_filters = cursor.fetchall()

        fetched_filters_index = 0

        while fetched_filters_index < len(fetched_filters):

            current_working_filter = fetched_filters[fetched_filters_index][0]

            response.get("filtrat").append({"emri" : current_working_filter, "values" : [], "value" : None})

            cursor.execute(f"SELECT {current_working_filter} FROM filter{category_id} WHERE {current_working_filter} != 'NULL';")

            filter_options = cursor.fetchall()

            current_filters_working_list = response.get("filtrat")[fetched_filters_index]

            for filter_option in filter_options:
                
                current_filters_working_list.get('values').append(filter_option[0])

            fetched_filters_index += 1

        conn.commit()

        return jsonify(response)
    else:
        return jsonify("Karin")


if __name__ == "__main__": 
    app.run()              