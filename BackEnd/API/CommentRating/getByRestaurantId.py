import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request

def append_photos(cursor,review):
    cursor.execute("SELECT * from Photos where review_id=%s",review['id'])
    review['photos']=cursor.fetchall()

@app.route('/restaurant/reviews/<id>')
def get_reviews_by_id(id):
    try:
        conn=mysql.connect()
        cursor=conn.cursor(pymysql.cursors.DictCursor)
        
        cursor.execute("SELECT * from Review where restaurant_id=%s",id)
        reviews=cursor.fetchall()
        for review in reviews:
            append_photos(cursor,review)
        
        resp=jsonify(reviews)
        return resp
        conn.close()
        cursor.close()
    except Exception as e:
        print("ERROR",e,"ERROR")
        return jsonify("ERROR")

    

