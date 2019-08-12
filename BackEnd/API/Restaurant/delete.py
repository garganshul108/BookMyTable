import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request

@app.route('/restaurants/<id>',methods=['DELETE'])
def delete_restaurant(id):
    try:
        conn=mysql.connect()
        cursor=conn.cursor()
        cursor.execute("DELETE FROM Photo where review_id=(SELECT id from Review where Review.restaurant_id=%s)",id)
        cursor.execute("DELETE FROM Review where restaurant_id=%s",id)
        cursor.execute("DELETE FROM Slot where restaurant_id=%s",id)
        cursor.execute("DELETE FROM Booking where restaurant_id=%s",id)
        cursor.execute("DELETE FROM Day restaurant_id=%s)",id)
        cursor.execute("DELETE FROM Restaurant where id=%s",id)
        # cursor.execute("DELETE FROM Location where id=(SELECT location_id from Restaurant where id=%s)",id)
        conn.commit()
        resp=jsonify("Sucessful")
        resp.status_code=204
        return resp
    except Exception as e:
        print("Restaurant ",e," Restaurant")
        resp=jsonify("ERROR")
        resp.status_code=500
        return resp
    finally:
        conn.close()
        cursor.close()
