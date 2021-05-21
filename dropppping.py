import csv, sys, psycopg2



conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")

cursor = conn.cursor()  

filter_name = "lloji"
filter_value = "Biskota"

response = {}

cursor.execute("select departament, category from categories where id = (select category_id from filters_table where (filters->%s)::jsonb ? %s LIMIT 1);", (filter_name, filter_value))

data = cursor.fetchall()

departament, category = data[0][0], data[0][1]

response.update({"category_name" : category, "linku": f"{departament}-{category}".lower().replace(" ","-")})

print(response)
