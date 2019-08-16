import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from util.lastId import get_last_id
from LoginSignUp.util.required import token_required
from CommentRating.util.delete import delete_review_query

@app.route('/api/users/reviews/<id>',methods=['DELETE'])
@token_required
def delete_review(current_user,id):
    if(current_user['id']!=int(id)):
        return jsonify("Unauthorized"),401
    try:
        conn=mysql.connect()
        cursor=conn.cursor()
        delete_review_query(id,cursor)
        conn.commit()
        resp=jsonify("Success")
        resp.status_code=204
        return resp
    except Exception as e:
        print("comment ",e," comment")
        return jsonify("ERROR"),500
    finally:
        conn.close()
        cursor.close()



