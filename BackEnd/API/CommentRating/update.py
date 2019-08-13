import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from util.lastId import get_last_id

@app.route('/api/reviews/<id>',methods=['PUT'])
def update_review(id):
    try:
        data=request.json[0]
        _comment=data['comment']
        _rating=data['rating']
        _rating_text=data['rating_text']
        _res_id=data['restaurant_id']
        # _user_id=data['user_id']

        conn=mysql.connect()
        cursor=conn.cursor()
        sql="UPDATE Review SET restaurant_id=%s,comment=%s,rating=%s,rating_text=%s WHERE id=%s"
        values=(_res_id,_comment,_rating,_rating_text,id)
        cursor.execute(sql,values)
        cursor.execute("DELETE FROM Photo where review_id=%s",id)
        for url in data['photos']:
            sql="INSERT INTO Photo(review_id,url) values(%s,%s)"
            values=(id,url)
            cursor.execute(sql,values)
        conn.commit()
        return "Comment Insertion Successfull"
    except Exception as e:
        print("comment ",e," comment")
    finally:
        conn.close()
        cursor.close()
        return "FINLA"



