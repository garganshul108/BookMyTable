import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from util.sendGetResponse import send_get_response

def append_photos(cursor,review):
    cursor.execute("SELECT * from Photo where review_id=%s",review['id'])
    review['photos']=cursor.fetchall()

@app.route('/api/reviews')
def get_reviews(resId=None):
    _restaurant_id=request.args.get('restaurantId',default="%",type=int)
    _user_id=request.args.get('userId',default="%",type=int)
    if resId != None:
        _restaurant_id=resId
    try:
        conn=mysql.connect()
        cursor=conn.cursor(pymysql.cursors.DictCursor)
        
        cursor.execute("SELECT * from Review where restaurant_id LIKE %s AND user_id",_restaurant_id,_user_id)
        reviews=cursor.fetchall()
        for review in reviews:
            append_photos(cursor,review)
        
        return send_get_response(reviews,"No Review Found ")
  
    except Exception as e:
        print(e)
        resp=jsonify("ERROR")
        resp.status_code=500
        return resp
    finally:
        conn.close()
        cursor.close()
    

