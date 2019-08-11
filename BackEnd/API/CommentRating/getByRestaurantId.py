import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from util.sendGetResponse import send_get_response

def append_photos(cursor,review):
    cursor.execute("SELECT * from Photos where review_id=%s",review['id'])
    review['photos']=cursor.fetchall()

@app.route('/restaurants/<res_id>/reviews')
def get_reviews_by_restaurant_id(res_id):
    try:
        conn=mysql.connect()
        cursor=conn.cursor(pymysql.cursors.DictCursor)
        
        cursor.execute("SELECT * from Review where restaurant_id=%s",res_id)
        reviews=cursor.fetchall()
        for review in reviews:
            append_photos(cursor,review)
        
        return send_get_response(reviews,"No review for selected restaurant")
    except Exception as e:
        print(e)
        resp=jsonify("ERROR")
        resp.status_code=500
        return resp
    finally:
        conn.close()
        cursor.close()

    

