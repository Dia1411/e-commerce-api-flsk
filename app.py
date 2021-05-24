from flask import Flask, session, render_template, request ,redirect , url_for, jsonify
from flask_cors import CORS
import psycopg2, json

app = Flask(__name__)
CORS(app)


def get_category_id(category_name, cursor):

    command = f"SELECT id from categories WHERE category = '{category_name}'"

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

    cursor.execute(f"SELECT d.key, d.value FROM filters_table JOIN json_each(filters_table.filters::json) d ON true WHERE category_id = {category_id};")

    data = cursor.fetchall()

    filtrat = [d[0] for d in data]

    filters_index = 0

    for filtr in filtrat:

        response.get("filtrat").append({"value" : None, "emri" : filtr.replace("_hyphen_", "-").replace("_asgn_", "&").replace("_", " ").upper(), "values" : [], "value" : None})

        filter_options = [d[1] for d in  data if d[0] == filtr][0]

        print(filter_options)

        current_working_filters_value_list = response.get("filtrat")[filters_index].get("values")

        for option in filter_options:
            current_working_filters_value_list.append(option)

        filters_index += 1

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

    category_name = request.args.get('category')

    number_of_products = int(request.args.get('last'))

    print(category_name, number_of_products)

    category_id = get_category_id(category_name, cursor)

    response = {"kategoria" : category_name, "filtrat" : [], "produktet" : []}

    print(f"Category ID : {category_id}")

    cursor.execute(f"SELECT d.key, d.value FROM filters_table JOIN json_each(filters_table.filters::json) d ON true WHERE category_id = {category_id};")

    data = cursor.fetchall()

    filtrat = [d[0] for d in data]

    filters_index = 0

    for filtr in filtrat:

        response.get("filtrat").append({"value" : None, "emri" : filtr.replace("_hyphen_", "-").replace("_asgn_", "&").replace("_", " ").upper(), "values" : [], "value" : None})

        filter_options = [d[1] for d in  data if d[0] == filtr][0]

        current_working_filters_value_list = response.get("filtrat")[filters_index].get("values")

        for option in filter_options:
            current_working_filters_value_list.append({"emri" : option, "checked" : False})

        filters_index += 1

    columns = ('id', 'creation_time', 'details', 'owner', 'spot')
  
    cursor.execute(f"SELECT id, creation_time, details, owner, spot  FROM products WHERE category_id = {category_id} LIMIT {number_of_products};")
    
    products = cursor.fetchall()

    for product in products: 
        response.get("produktet").append(dict(zip(columns, product)))

    print(response)

    conn.commit()
    conn.close()
    
    return jsonify(response)


@app.route("/products" , methods=["POST"])
def products(): 

    conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")
    cursor = conn.cursor()  

    product_name = request.args.get('product_name')

    columns = ('id','creation_time', 'details', 'owner', 'spot')
  
    cursor.execute(f"SELECT id, creation_time, details, owner, spot  FROM products WHERE spot = '{product_name}';")
    
    products = cursor.fetchall()[0]

    print(products)

    response = dict(zip(columns, products))

    print(response)

    conn.commit()

    conn.close()

    return jsonify(response)


@app.route("/filter", methods=["POST"])
def filter():

    conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")

    cursor = conn.cursor()  

    filter_data = json.loads(request.form.get('filter_data'))
    
    category_id = get_category_id(filter_data['category'], cursor)

    commands =  f"SELECT id, creation_time, details, owner, spot FROM products WHERE category_id = {category_id}"

    index = 0

    data_json = []

    while index < len(filter_data['filters']):
        
        if filter_data['filters'][index]['kategoria'] == "price":

            command = f" AND ((details->>'price')::NUMERIC > {filter_data['filters'][index]['min_value']} AND (details->>'price')::NUMERIC < {filter_data['filters'][index]['max_value']}) OR ((details->>'priceLow')::NUMERIC > {filter_data['filters'][index]['min_value']} AND (details->>'priceLow')::NUMERIC < {filter_data['filters'][index]['max_value']})"

        else:
            filter_vale = filter_data['filters'][index]['value'].replace("'","\'")

            command = f" AND details ->> '{filter_data['filters'][index]['kategoria']}' = %s"
            
            data_json.append(filter_data['filters'][index]['value'])

        commands += command
        
        if index == len(filter_data['filters']) -1:
            commands += f" LIMIT {filter_data['last']};"

        index += 1

    response = {"produktet" : []}

    print(f"\nCommand is : {commands}\n")

    data = tuple(data_json)

    print(f"Data Paramethers : {data}")

    cursor.execute(commands, data)

    columns = ('id', 'creation_time', 'details', 'owner', 'spot')
    
    products = cursor.fetchall()

    print(products)

    for product in products: 
        response.get("produktet").append(dict(zip(columns, product)))

    print(response['produktet'])

    return jsonify(response)
    
    
@app.route("/search", methods=["POST"])
def search():
    
    conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")

    cursor = conn.cursor()  

    filter_data = request.form.get('query_text').lower()

    return_number = request.form.get('query_product')

    commands =  "SELECT spot, details->> 'name', details#>'{photos,0}', details->> 'price', details->>'kategoria' FROM products WHERE LOWER(spot) LIKE %s LIMIT %s"

    print("%" + filter_data + "%")

    data = ("%" + filter_data + "%", return_number)

    cursor.execute(commands, data)

    products = cursor.fetchall()

    columns = ("spot", "name", "photos", "price", "kategoria")

    print("products : ", products)

    response = []

    for product in products: 
        
        response.append(dict(zip(columns, product)))

    print(response, len(response))

    return jsonify(response)


@app.route("/search_click", methods=["POST"])
def search_click():

    conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")

    cursor = conn.cursor()  

    response = {"filtrat" : [], "produktet" : []}

    filter_data = request.args.get('query_text').lower()

    return_number = request.args.get('query_product')

    cursor.execute("SELECT category_id, id, creation_time, details, owner, spot FROM products WHERE LOWER(spot) LIKE %s LIMIT %s", ("%" + filter_data.lower() + "%", return_number))

    data = cursor.fetchall()

    id_list = tuple([d[0] for d in data])

    columns = ('id', 'creation_time', 'details', 'owner', 'spot')

    response = {"produktet" : [], "filtrat" : []}

    for dt in data:
        response['produktet'].append(dict(zip(columns, (dt[1], dt[2], dt[3], dt[4], dt[5]))))

    if len(id_list) > 0:

        command2 = "SELECT d.key, json_agg(d.value) FROM filters_table JOIN json_each(filters_table.filters::json) d ON true WHERE filters_table.category_id IN %s GROUP BY d.key;"

        data = (id_list, )

        cursor.execute(command2, data)

        data = cursor.fetchall()

        filters_index = 0

        for row in data:

            response.get("filtrat").append({"value" : None, "emri" : row[0].replace("_hyphen_", "-").replace("_asgn_", "&").replace("_", " ").upper(), "values" : [], "value" : None})
            
            filters_array = [j for i in row[1] for j in i]

            current_working_filters_value_list = response.get("filtrat")[filters_index].get("values")

            for filter_option in filters_array:
                
                if filter_option not in [d.get('emri') for d in current_working_filters_value_list]:

                    current_working_filters_value_list.append({"emri" : filter_option, "checked" : False})

            filters_index += 1

    print(response)

    return jsonify(response)


@app.route("/newest", methods=["POST"])
def newest():

    conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")

    cursor = conn.cursor()  

    response = {"filtrat" : [], "produktet" : []}

    return_number = request.args.get('query_product')

    cursor.execute("SELECT category_id, creation_time, details, owner, spot FROM products ORDER BY creation_time DESC LIMIT %s", (return_number, ))

    data = cursor.fetchall()

    id_list = tuple([d[0] for d in data])


    if len(id_list) > 0:

        columns = ('creation_time', 'details', 'owner', 'spot')

        response = {"produktet" : [], "filtrat" : []}

        for dt in data:
            response['produktet'].append(dict(zip(columns, (dt[1], dt[2], dt[3], dt[4]))))

        command2 = "SELECT d.key, json_agg(d.value) FROM filters_table JOIN json_each(filters_table.filters::json) d ON true WHERE filters_table.category_id IN %s GROUP BY d.key;"

        data = (id_list, )

        cursor.execute(command2, data)

        data = cursor.fetchall()

        filters_index = 0

        for row in data:

            response.get("filtrat").append({"value" : None, "emri" : row[0].replace("_hyphen_", "-").replace("_asgn_", "&").replace("_", " ").upper(), "values" : [], "value" : None})
            
            filters_array = [j for i in row[1] for j in i]

            current_working_filters_value_list = response.get("filtrat")[filters_index].get("values")

            for filter_option in filters_array:
                
                if filter_option not in [d.get('emri') for d in current_working_filters_value_list]:

                    current_working_filters_value_list.append({"emri" : filter_option, "checked" : False})

        filters_index += 1

    return jsonify(response)


@app.route("/highest_evaluation", methods=["POST"])
def highest_evaluation():

    conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")

    cursor = conn.cursor()  

    response = {"filtrat" : [], "produktet" : []}

    return_number = request.args.get('query_product')

    cursor.execute("SELECT category_id, creation_time, details, owner, spot FROM products ORDER BY (details->>'likes')::NUMERIC DESC, (details->>'likers')::NUMERIC DESC LIMIT %s", (return_number, ))

    data = cursor.fetchall()

    id_list = tuple([d[0] for d in data])

    if len(id_list) > 0:

        columns = ('creation_time', 'details', 'owner', 'spot')

        for dt in data:
            response['produktet'].append(dict(zip(columns, (dt[1], dt[2], dt[3], dt[4]))))

        command2 = "SELECT d.key, json_agg(d.value) FROM filters_table JOIN json_each(filters_table.filters::json) d ON true WHERE filters_table.category_id IN %s GROUP BY d.key;"

        data = (id_list, )

        cursor.execute(command2, data)

        data = cursor.fetchall()

        filters_index = 0

        for row in data:

            response.get("filtrat").append({"value" : None, "emri" : row[0].replace("_hyphen_", "-").replace("_asgn_", "&").replace("_", " ").upper(), "values" : [], "value" : None})
            
            filters_array = [j for i in row[1] for j in i]

            current_working_filters_value_list = response.get("filtrat")[filters_index].get("values")

            for filter_option in filters_array:
                
                if filter_option not in [d.get('emri') for d in current_working_filters_value_list]:

                    current_working_filters_value_list.append({"emri" : filter_option, "checked" : False})

            filters_index += 1

    return jsonify(response)


@app.route("/best_deals", methods=["POST"])
def best_deals():

    conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")

    cursor = conn.cursor()  

    response = {"filtrat" : [], "produktet" : []}

    return_number = request.args.get('query_product')

    cursor.execute("SELECT category_id, id, creation_time, details, owner, spot From products WHERE jsonb_typeof((details->'priceLow')::jsonb) != 'null' ORDER BY (details->>'likes')::NUMERIC DESC, (details->>'likers')::NUMERIC DESC LIMIT  %s;", (return_number, ))

    data = cursor.fetchall()

    id_list = tuple([d[0] for d in data])

    if len(id_list) > 0:

        columns = ('id', 'creation_time', 'details', 'owner', 'spot')

        response = {"produktet" : [], "filtrat" : []}

        for dt in data:
            response['produktet'].append(dict(zip(columns, (dt[1], dt[2], dt[3], dt[4], dt[5]))))

        command2 = "SELECT d.key, json_agg(d.value) FROM filters_table JOIN json_each(filters_table.filters::json) d ON true WHERE filters_table.category_id IN %s GROUP BY d.key;"

        data = (id_list, )

        cursor.execute(command2, data)

        data = cursor.fetchall()

        filters_index = 0

        for row in data:

            response.get("filtrat").append({"value" : None, "emri" : row[0].replace("_hyphen_", "-").replace("_asgn_", "&").replace("_", " ").upper(), "values" : [], "value" : None})
            
            filters_array = [j for i in row[1] for j in i]

            current_working_filters_value_list = response.get("filtrat")[filters_index].get("values")

            for filter_option in filters_array:
                
                if filter_option not in [d.get('emri') for d in current_working_filters_value_list]:

                    current_working_filters_value_list.append({"emri" : filter_option, "checked" : False})

            filters_index += 1


    return jsonify(response)


@app.route("/filter_redirect", methods=["POST"])
def filter_redirect():

    conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")

    cursor = conn.cursor()  

    filter_name = request.form.get("filter_name").replace("-", "_hyphen_").replace("&", "_asgn_").replace(" ", "_").lower()

    filter_value = request.form.get("filter_value")

    print("FILTER'S NAME ", filter_name, " FILTER'S VALUE ", filter_value)

    response = {}

    cursor.execute("select departament, category from categories where id = (select category_id from filters_table where (filters->%s)::jsonb ? %s LIMIT 1);", (filter_name, filter_value))

    data = cursor.fetchall()

    departament, category = data[0][0], data[0][1]

    response.update({"departament": departament,"category_name" : category, "linku": f"{departament}-{category}".lower().replace(" ","-")})

    return jsonify(response)


@app.route("/edit", methods=["POST"])
def edit_products():

    conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")

    cursor = conn.cursor()  

    to_edit = json.loads(request.form.get('to_edit'))

    del_length = 0

    print("to_edit", to_edit)

    for operation in to_edit['operations']:

        try:
            if operation['operation'] == "delete":
                to_edit['operations'].remove(operation)
                to_edit['operations'].append(operation)
        except:
            pass


    product_id = to_edit['product_id']

    for operation in to_edit['operations']:

        if operation['fieldname'] != 'photos':
            
            data = ("{%s}" % operation['fieldname'], operation['new_value'], product_id)
            
            cursor.execute("""
                            UPDATE products 
                            SET details = JSONB_SET(
                                details::jsonb, 
                                %s, 
                                TO_JSONB(%s::TEXT), 
                                false) 
                            WHERE id = %s;""", data
                            )
        else:

            print("OPERATION TYPE ", operation['operation'])

            if operation['operation'] == 'update':

                command = "UPDATE products SET details = JSONB_SET(details, %s, (SELECT (details->'photos') || %s FROM products WHERE id = %s), false) WHERE id = %s;"

                print(type(json.dumps(operation['new_value'])))

                data = ("{%s}" % operation['fieldname'], json.dumps(operation['new_value']), product_id, product_id)

                cursor.execute(command, data)

                commands = """  
                        UPDATE products 
                        SET details = JSONB_SET(
                            details, 
                            %s, 
                            (WITH new_photos AS 
                                (
                                    SELECT JSONB_ARRAY_ELEMENTS(details -> 'photos') photos 
                                    FROM products 
                                    WHERE id = %s
                                ) 
                            SELECT JSONB_AGG(photos)
                            FROM new_photos 
                            WHERE photos->>'photo_uuid' != %s)) 
                        WHERE id = %s;
                        """
                
                data = ("{%s}" % operation['fieldname'], product_id, operation['photo_uuid'], product_id)

                cursor.execute(commands, data)

            elif operation['operation'] == 'insert':

                command = "UPDATE products SET details = JSONB_SET(details, %s, (SELECT (details->'photos') || %s FROM products WHERE id = %s), false) WHERE id = %s;"

                print(type(json.dumps(operation['new_value'])))

                data = ("{%s}" % operation['fieldname'], json.dumps(operation['new_value']), product_id, product_id)

                cursor.execute(command, data)

            elif operation['operation'] == 'delete':

                cursor.execute( """  
                                SELECT jsonb_array_length(details->'photos') 
                                FROM products 
                                WHERE id = %s;
                                """, (product_id, ))

                if cursor.fetchall()[0][0] == 1:

                    return "0"
                    
                else:
                    commands = """  
                            UPDATE products 
                            SET details = JSONB_SET(
                                details, 
                                %s, 
                                (WITH new_photos AS 
                                    (
                                        SELECT JSONB_ARRAY_ELEMENTS(details -> 'photos') photos 
                                        FROM products 
                                        WHERE id = %s
                                    ) 
                                SELECT JSONB_AGG(photos)
                                FROM new_photos 
                                WHERE photos->>'photo_uuid' != %s)) 
                            WHERE id = %s;
                            """
                    
                    data = ("{%s}" % operation['fieldname'], product_id, operation['photo_uuid'], product_id)

                    cursor.execute(commands, data)
            
    conn.commit()
    
    return "1"


@app.route("/to_edit_products", methods=["POST"])
def owners_products():

    conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")

    cursor = conn.cursor()  

    product_owner = request.args.get('owner')

    cursor.execute("SELECT id, creation_time, details, owner, spot  FROM products WHERE owner = %s", (product_owner,))

    columns = ('id','creation_time', 'details', 'owner', 'spot')

    response = []

    products = cursor.fetchall()

    for product in products: 
        response.append(dict(zip(columns, product)))

    conn.commit()

    return jsonify(response)


@app.route("/delete_products", methods=["POST"])
def delete_products():

    conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")

    cursor = conn.cursor()  

    product_id = request.args.get('product_id')

    cursor.execute("DELETE FROM products WHERE id = %s;", (product_id,))

    conn.commit()

    return "1"




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

@app.route("/sort_newest", methods=["POST"])
def sort_newest():

    conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")

    cursor = conn.cursor()  

    response = {"produktet" : []}

    produc_id_list = request.form.get('produc_id_list')

    return_number = request.form.get('query_product')

    cursor.execute("SELECT id, creation_time, details, owner, spot FROM products WHERE id IN %s ORDER BY creation_time DESC LIMIT %s", (produc_id_list, return_number))

    columns = ('id', 'creation_time', 'details', 'owner', 'spot')

    for dt in cursor.fetchall():
        response['produktet'].append(dict(zip(columns, (dt[1], dt[2], dt[3], dt[4]))))

    return jsonify(response)

@app.route("/sort_low_high", methods=["POST"])
def sort_low_high():

    conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")

    cursor = conn.cursor()  

    response = {"produktet" : []}

    produc_id_list = request.form.get('produc_id_list')

    return_number = request.form.get('query_product')

    cursor.execute("SELECT id, creation_time, details, owner, spot FROM products WHERE id IN %s ORDER BY (details->>'price')::NUMERIC ASC LIMIT %s", (produc_id_list, return_number))

    columns = ('id', 'creation_time', 'details', 'owner', 'spot')

    for dt in cursor.fetchall():
        response['produktet'].append(dict(zip(columns, (dt[1], dt[2], dt[3], dt[4]))))

    return jsonify(response)


"""

if __name__ == "__main__": 
    app.run()              
