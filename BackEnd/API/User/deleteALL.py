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


@app.route('/api/deleteAllUser',methods=['DELETE'])
def delete():
    conn=mysql.connect()
    cursor=conn.cursor()
    cursor.execute("DELETE FROM User")
    conn.commit()
    conn.close()
    cursor.close()
    return "Done"
