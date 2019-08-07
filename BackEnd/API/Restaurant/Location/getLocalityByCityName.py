import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
@app.route('/locations/<city_name>')
def get_localities(city_name):
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute(
            "SELECT DISTINCT locality from Location WHERE Location.city=%s", city_name
        )
        resp = jsonify(cursor.fetchall())
        resp.status_code = 200
        return resp
    except Exception as e:
        print(e)
    finally:
        cursor.close()
        conn.close()