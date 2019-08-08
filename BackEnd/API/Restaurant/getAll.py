import pymysql
from app import app
from db_config import mysql
from flask import jsonify

def convert_restaurant(cursor, rows):
    for row in rows:
        cursor.execute("SELECT * FROM Location where id=%s",
                       row['location_id'])
        loc = cursor.fetchall()
        row['location'] = loc[0]

        cursor.execute("SELECT * FROM Hall_Size where id=%s",
                       row['capacity_id'])
        table = cursor.fetchall()
        row['table'] = table[0]

        cursor.execute("SELECT * FROM Availablity where id=%s",
                       row['availablity_id'])
        days=cursor.fetchall()
        row['days']=days[0]
       
        del row['availablity_id']
        del row['location_id']
        del row['capacity_id']

@app.route('/restaurants')
def get_restaurants():
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute(
            "SELECT * FROM Restaurant ")
        rows = cursor.fetchall()
        convert_restaurant(cursor, rows)
        resp = jsonify(rows)
        resp.status_code = 200
        return resp
    except Exception as e:
        print(e)
        return "error"
    finally:
        cursor.close()
        conn.close()