import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from util.sendGetResponse import send_get_response

@app.route('/locations/<id>')
def get_location_by_id(id):
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute("SELECT * FROM Location WHERE id=%s",id)
        rows = cursor.fetchall()
        return send_get_response(rows,"No location found for selected id")
    except Exception as e:
        print(e)
        resp=jsonify("ERROR")
        resp.status_code=500
        return resp
    finally:
        cursor.close()
        conn.close()