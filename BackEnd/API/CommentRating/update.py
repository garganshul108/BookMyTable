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
        # _user_id=data['user_id']

        conn=mysql.connect()
        cursor=conn.cursor()
        print("sfdsd")
        cursor.execute("SELECT restaurant_id,rating from Review where id=%s",id)
        (_res_id,rating1)=cursor.fetchall()[0]
        cursor.execute("SELECT rating,votes FROM Restaurant where id=%s",_res_id)
        (rating,votes)=cursor.fetchall()[0]
        cursor.execute("UPDATE Restaurant SET rating=%s where id=%s",
                    ((rating*(votes)-rating1+_rating)/(votes),_res_id))

        sql="UPDATE Review SET comment=%s,rating=%s,rating_text=%s WHERE id=%s"
        values=(_comment,_rating,_rating_text,id)
        cursor.execute(sql,values)
        cursor.execute("DELETE FROM Photo where review_id=%s",id)
        for url in data['photos']:
            sql="INSERT INTO Photo(review_id,url) values(%s,%s)"
            values=(id,url)
            cursor.execute(sql,values)
        conn.commit()
        return jsonify("Comment Insertion Successfull")
    except Exception as e:
        print("commmment ",e," comment")
    finally:
        conn.close()
        cursor.close()



