import csv, sys, psycopg2, time, traceback


conn = psycopg2.connect(database="eblej", user="eblej_director", password="AlbaniasAmazon", host="localhost", port="5432")
cursor = conn.cursor()

index = 1

while index <= 239:

    command = f"DROP TABLE filter{index}"
    try:
        cursor.execute(command)
        conn.commit()
    except Exception as e:
        print(index, str(e))
        conn.rollback()

    index += 1