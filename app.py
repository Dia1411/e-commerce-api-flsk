from flask import Flask, session, render_template, request ,redirect , url_for, jsonify
from flask_cors import CORS
import psycopg2, json

app = Flask(__name__)
CORS(app)


@app.route("/categories" , methods=["POST"])
def categories(): 

    conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")
    cursor = conn.cursor()  

    category = request.form.get('category')

    command = f"SELECT id from categories WHERE category = '{category}'"

    cursor.execute(command)

    category_id = cursor.fetchall()[0][0]

    print(f"Category id is : {category_id}")

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

    conn.close()

    print(f"Response is : {response}")

    return jsonify(response)



@app.route("/create_products" , methods=["POST"])
def create_products(): 

    conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")
    cursor = conn.cursor()  

    product_data = json.loads(request.form.get('product_data'))

    category_name = product_data['details']['kategoria']

    command = f"SELECT id from categories WHERE category = '{category_name}'"

    cursor.execute(command)

    category_id = cursor.fetchall()[0][0]

    print(product_data['owner'], product_data['responseData'], product_data['details'])

    to_insert_json = product_data['details']

    for data in product_data['responseData']:

        to_insert_json.update({data['emri'] : data['value'] })

    commands =  "INSERT INTO products (creation_time, details, owner, spot, category_id) VALUES (%s, %s, %s, %s, %s)"

    insert_data = (product_data['creationTime'], json.dumps(to_insert_json), product_data['owner'], product_data['spot'], category_id)

    cursor.execute(commands, insert_data)

    conn.commit()

    conn.close()

    return "1"


if __name__ == "__main__": 
    app.run()              
