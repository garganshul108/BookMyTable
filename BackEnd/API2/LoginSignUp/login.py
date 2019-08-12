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

@app.route('/login')
def login():
    auth=request.authorization

    if not auth or not auth.username or not auth.password:
        return make_response('Could not verify 1', 401, {'WWW-Authenticate' : 'Basic realm="Login required!"'})

    conn=mysql.connect()
    cursor=conn.cursor(pymysql.cursors.DictCursor)
    cursor.execute("SELECT * FROM User WHERE email_id=%s",auth.username)
    conn.commit()
    
    Users=cursor.fetchall()
    if not Users:
        return make_response('Could not verify 2', 401, {'WWW-Authenticate' : 'Basic realm="Login required!"'})
    User=Users[0]
    conn.close()
    cursor.close()
    

    if check_password_hash(User['password'],auth.password):
        token = jwt.encode({'public_id' : User['id'], 'exp' : datetime.datetime.utcnow() + datetime.timedelta(minutes=3)}, app.config['SECRET_KEY'])
    
    return jsonify({'token':token.decode('UTF-8')})

    return make_response('Could not verify 3', 401, {'WWW-Authenticate' : 'Basic realm="Login required!"'})







