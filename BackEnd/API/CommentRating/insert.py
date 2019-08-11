import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from util.lastId import get_last_id

@app.route('/restaurants/reviews',methods=['POST'])
def insert_comment_rating():
    try:
        data=request.json[0]
        _comment=data['comment']
        _rating=data['rating']
        _rating_text=data['rating_text']
        _res_id=data['restaurant_id']
        # _user_id=data['user_id']

        conn=mysql.connect()
        cursor=conn.cursor()
        sql="INSERT INTO Review(restaurant_id,comment,rating,rating_text) values(%s,%s,%s,%s)"
        values=(_res_id,_comment,_rating,_rating_text)
        cursor.execute(sql,values)
        review_id=get_last_id(cursor)
        for url in data['photos']:
            sql="INSERT INTO Photos(review_id,url) values(%s,%s)"
            values=(review_id,url)
            cursor.execute(sql,values)
        conn.commit()
        return "Comment Insertion Successfull"
    except Exception as e:
        print("comment ",e," comment")
    finally:
        conn.close()
        cursor.close()
        return "FINLA"



