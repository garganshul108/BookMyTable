import pymysql
from app import app
from db_config import mysql
from flask import flash, request,jsonify,make_response
from werkzeug.security import generate_password_hash, check_password_hash
import jwt
import uuid
import datetime
from functools import wraps
from util.lastId import get_last_id
from LoginSignUp.util.required import token_required

@app.route('/api/login',methods=['POST'])
def login():
    try:
        auth=request.authorization
        data=request.json[0]
        if not auth or not auth.username or not auth.password:
            return make_response('Could not verify 1', 401, {'WWW-Authenticate' : 'Basic realm="Login required!"'})

        conn=mysql.connect()
        cursor=conn.cursor(pymysql.cursors.DictCursor)
        if data['restaurant']==0:
            cursor.execute("SELECT * FROM User WHERE email_id=%s",auth.username)
        else:
            cursor.execute("SELECT * FROM Restaurant WHERE email=%s",auth.username)
        conn.commit()
        
        Users=cursor.fetchall()
        if not Users:
            return make_response('Could not verify 2', 401, {'WWW-Authenticate' : 'Basic realm="Login required!"'})
        User=Users[0]
        conn.close()
        cursor.close()
        

        if check_password_hash(User['password'],auth.password):
            token = jwt.encode({'public_id' : User['id'], 'exp' : datetime.datetime.utcnow() + datetime.timedelta(minutes=120)}, app.config['SECRET_KEY'])
            resp=jsonify("Successful")
            resp.headers.add("token",token.decode('UTF-8'))
            return resp

        return make_response('Could not verify 3', 401, {'WWW-Authenticate' : 'Basic realm="Login required!"'})
    except Exception as e:
        print (e)
        return jsonify("BAD request"),400







