import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from util.sendGetResponse import send_get_response

@app.route('/api/photos/<res_id>')
def get_establishments():
    try:
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute("SELECT id from Review where restaurant_id=%s",res_id)
        rows=cursor.fetchall()
        list=[]
        for row in rows:
            cursor.execute("SELECT url from Photo where review_id=%s",row)
            list=list+cursor.fetchall()
        return send_get_response(list,"No Photo Found")
    except Exception as e:
        print(e)
        resp=jsonify("ERROR")
        resp.status_code=500
        return resp
    finally:
        cursor.close()
        conn.close()
