import pymysql
from app import app
from db_config import mysql
from flask import jsonify,flash,request
from Restaurant.util.convertRestaurant import convert_restaurant
from util.sendGetResponse import send_get_response
from LoginSignUp.util.required import token_required
from User.util.convertUser import convert_user

@app.route('/api/users/<id>')
# @token_required
def get_user(id):
    try:
        conn=mysql.connect()
        cursor=conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute("SELECT * FROM User where id=%s",id)
        rows=cursor.fetchall()
        convert_user(cursor,rows)
        return send_get_response(rows,"Success")
    except Exception as e:
        print(e)
        resp=jsonify("ERROR")
        resp.status_code=500
        return resp
    finally:
        conn.close()
        cursor.close()