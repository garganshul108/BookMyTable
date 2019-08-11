import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from util.sendGetResponse import send_get_response
@app.route('/locations/city/<city_name>/localities')
def get_localities(city_name):
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute(
            "SELECT DISTINCT locality from Location WHERE Location.city=%s", city_name
        )
        rows = cursor.fetchall()
        return send_get_response(rows,"No localities for selected criteria")
        
    except Exception as e:
        print(e)
        resp=jsonify("ERROR")
        resp.status_code=500
        return resp
    finally:
        cursor.close()
        conn.close()