import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from util.lastId import get_last_id

@app.route('/api/reviews',methods=['POST'])
def insert_review():
    try:
        data=request.json[0]
        # print(data)
        _comment=data['comment']
        _rating=data['rating']
        _rating_text=data['rating_text']
        _res_id=data['restaurant_id']
        # _user_id=data['user_id']

        conn=mysql.connect()
        cursor=conn.cursor()
        cursor.execute("SELECT rating,votes FROM Restaurant where id=%s",_res_id)
        
        (rating,votes)=cursor.fetchall()[0]
        
        cursor.execute("UPDATE Restaurant SET rating=%s,votes=%s where id=%s",
                    ((rating*votes+_rating)/(votes+1),votes+1,_res_id))
        print("working")
        sql="INSERT INTO Review(restaurant_id,comment,rating,rating_text) values(%s,%s,%s,%s)"
        values=(_res_id,_comment,_rating,_rating_text)
        cursor.execute(sql,values)
        review_id=get_last_id(cursor)
        for url in data['photos']:
            sql="INSERT INTO Photo(review_id,url) values(%s,%s)"
            values=(review_id,url)
            cursor.execute(sql,values)
        conn.commit()
        print("sucess")
        return "Comment Insertion Successfull"
    except Exception as e:
        print("commmment ",e," comment")
    finally:
        conn.close()
        cursor.close()
        return "FINLA"



