import pymysql
from app import app
from db_config import mysql
from flask import flash, request,jsonify
from werkzeug.security import generate_password_hash, check_password_hash
import jwt
import uuid
import datetime
from functools import wraps
from util.lastId import get_last_id

@app.route('/api/bookmark/<id>',methods=['DELETE'])
def DeleteBookmark(id):
    try:
        conn=mysql.connect()
        cursor=conn.cursor()
        cursor.execute("DELETE FROM Bookmark WHERE id=%s",id)
        conn.commit()
        resp=jsonify("")
        resp.status_code=204
        return resp
    except Exception as e:
        print("ERROR ",e," ERROR")
        resp=jsonify("ERROR")
        resp.status_code=400
        return resp
    finally:
        conn.close()
        cursor.close()

