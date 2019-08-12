import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from util.sendGetResponse import send_get_response

@app.route('/bookings')
def get_bookings():
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute(
            "SELECT * FROM Booking ")
        rows = cursor.fetchall()
        return send_get_response(reviews,"No Booking Found")
    except Exception as e:
        print(e)
        resp=jsonify("ERROR")
        resp.status_code=500
        return resp
    finally:
        cursor.close()
        conn.close()
