import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from util.sendGetResponse import send_get_response

@app.route('/restaurants/<res_id>/bookings')
def get_bookings_by_restaurant_id(res_id):
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute(
            "SELECT * FROM Booking where restaurant_id=%s",res_id)
        rows = cursor.fetchall()
        return send_get_response(rows,"No booking found for the restaurant")
    except Exception as e:
        print(e)
        resp=jsonify("ERROR")
        resp.status_code=500
        return resp
    finally:
        cursor.close()
        conn.close()
