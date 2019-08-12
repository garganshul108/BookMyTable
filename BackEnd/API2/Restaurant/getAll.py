import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from Restaurant.util.convertRestaurant import convert_restaurant
from util.sendGetResponse import send_get_response

@app.route('/restaurants')
def get_restaurants():
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute(
            "SELECT * FROM Restaurant ")
        rows = cursor.fetchall()

        convert_restaurant(cursor, rows)
        return send_get_response(rows,"No Restaurant Found")
    except Exception as e:
        print(e)
        resp=jsonify("ERROR")
        resp.status_code=500
        return resp
    finally:
        cursor.close()
        conn.close()