from flask import Flask, session, render_template, request ,redirect , url_for, jsonify
from flask_cors import CORS
import psycopg2, json

app = Flask(__name__)
CORS(app)


def get_category_id(category_name, cursor):

    command = f"SELECT id from categories WHERE category = '{category}'"

    cursor.execute(command)

    return cursor.fetchall()[0][0]


@app.route("/categories" , methods=["POST"])
def categories(): 

    conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")
    cursor = conn.cursor()  

    category = request.form.get('category')
    category_id = get_category_id(category, cursor)

    print(f"Category id is : {category_id}")

    response = {"kategoria" : category, "filtrat" : []}

    filters = []

    cursor.execute(f"SELECT column_name FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'filter{category_id}';")

    fetched_filters = cursor.fetchall()

    fetched_filters_index = 0

    while fetched_filters_index < len(fetched_filters):

        current_working_filter = fetched_filters[fetched_filters_index][0].replace("_hyphen_", "-").replace("_asgn_", "&").replace("_", " ").upper()

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

    category_id = get_category_id(category_name, cursor)

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


@app.route("/products_and_filters" , methods=["POST"])
def products_and_filters(): 

    conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")
    cursor = conn.cursor()  

    response = {}
    category_name = request.form.get('category')

    print(category_name)

    #category_id = get_category_id(category, cursor)

    #katRequest {
    #    "kategoria" : ""
    #}

    conn.commit()
    conn.close()

    return jsonify(response)


"""
@app.route("/menu" , methods=["POST"])
def grab_menu():

    conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")
    cursor = conn.cursor()

    cursor.execute("SELECT departament_type FROM departaments")

    menu_data = cursor.fetchall()

    response_menu = []

    menu_data_index = 0

    while menu_data_index < len(menu_data):

        response_menu.append({"kategoria" : menu_data[menu_data_index][0] , "nenkategorite" : []})
        
        cursor.execute(f"SELECT category FROM categories WHERE departament = '{menu_data[menu_data_index][0]}'")

        category_datas = cursor.fetchall()

        for category_data in category_datas:
            
            link = f"{menu_data[menu_data_index][0]}-{category_data[0]}".lower().replace(" ","-")

            response_menu[menu_data_index].get("nenkategorite").append({"emri" : category_data[0], "link" : link})

        menu_data_index += 1

    return jsonify(response_menu)
"""

if __name__ == "__main__": 
    app.run()              
