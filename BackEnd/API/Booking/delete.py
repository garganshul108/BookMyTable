import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request

@app.route('/api/bookings/<id>',methods=['DELETE'])
def delete_booking(id):
    try:
        conn=mysql.connect()
        cursor=conn.cursor()
        cursor.execute("DELETE FROM Booking where id=%s",id)
        conn.commit()
        resp=jsonify("Success")
        resp.status_code=204
        return resp
    except Exception as e:
        print("Booking ",e," Booking")
        resp=jsonify("ERROR")
        resp.status_code=500
        return resp
    finally:
        conn.close()
        cursor.close()
