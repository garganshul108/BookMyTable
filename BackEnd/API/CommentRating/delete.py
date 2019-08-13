import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from util.lastId import get_last_id

@app.route('/api/reviews/<id>',methods=['PUT'])
def delete_review(id):
    try:
        conn=mysql.connect()
        cursor=conn.cursor()
        cursor.execute("DELETE FROM Photo where review_id=%s",id)
        cursor.execute("DELETE FROM Review where id=%s",id)
        conn.commit()
        resp=jonify("Success")
        resp.status_code=204
        return resp
    except Exception as e:
        print("comment ",e," comment")
    finally:
        conn.close()
        cursor.close()



