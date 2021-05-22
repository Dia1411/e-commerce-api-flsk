import csv, sys, psycopg2, json

conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")

cursor = conn.cursor()  

new_value = {
    "src":"https://www.kokkari.com",
    "emri":"kokkari.jpg",
    "photo_uuid" : "js834av"
}

command = """
    UPDATE products 
    SET details = JSONB_SET(
        details, 
        '%s', 
        (WITH new_photos AS 
            (
                SELECT JSONB_ARRAY_ELEMENTS(details->'photos') photos 
                FROM products WHERE id = %s
            ) 
        SELECT JSONB_AGG(photos)  || '%s' 
        FROM new_photos 
        WHERE photos::jsonb#>> '%s' != 'b423ka')
    )
    WHERE id = %s;""" % ("{%s}" % "photos", 1, json.dumps(new_value), "{%s}" % "photo_uuid", 1)

cursor.execute(command)

conn.commit()
print(command)
