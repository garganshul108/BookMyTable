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

# {
    # "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJwdWJsaWNfaWQiOjMsImV4cCI6MTU2NTM0Mzk3OX0.ELli-A9z9mFW-wz56ZRuQgKF2goG5alotQAAGB6YIVI"
# }

@app.route('/deleteUser')
def delete():
    conn=mysql.connect()
    cursor=conn.cursor()
    cursor.execute("DELETE FROM User")
    conn.commit()
    conn.close()
    cursor.close()
    return "Done"
@app.route('/signup',methods=['POST'])
def addUser():
    try:
        data=request.json
        hashed_password=generate_password_hash(data[0]['password'],method='sha256')
        conn=mysql.connect()
        cursor=conn.cursor()
        username=str(uuid.uuid4())
        username="sss"
        sql="Insert into User(username,firstname,lastname,email_id,password) VALUES(%s,%s,%s,%s,%s)"
        values=(username,data[0]['firstname'],data[0]['lastname'],data[0]['emailid'],hashed_password) 
        cursor.execute(sql,values)
        conn.commit()
        id=get_last_id(cursor)
        
        token=jwt.encode({
            'public_id':id,
            'exp':datetime.datetime.utcnow()+datetime.timedelta(minutes=2)
            }, app.config['SECRET_KEY'])
        
        return jsonify({'token':token.decode('UTF-8')})
    except Exception as e:
        print("ERROR ",e," ERROR")
        return "error"
    finally:
        conn.close()
        cursor.close()

