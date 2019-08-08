import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from Restaurant.util.convertRestaurant import convert_restaurant


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