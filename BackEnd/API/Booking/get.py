import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from util.sendGetResponse import send_get_response

@app.route('/api/bookings')
def get_bookings():
    _user_id=request.args.get('userId',default="%",type=int)
    _restaurant_id=request.args.get('restaurantId',default="%",type=int)

    if _user_id=="%" and _restaurant_id=="%":
        print("Unauthorized")

    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute(
            "SELECT * FROM Booking where user_id LIKE %s AND restaurant_id LIKE %s",_user_id,_restaurant_id)
        rows = cursor.fetchall()
        return send_get_response(reviews,"No Booking Found")
    except Exception as e:
        print(e)
        resp=jsonify("ERROR")
        resp.status_code=500
        return resp
    finally:
        cursor.close()
        conn.close()
