import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request

@app.route('/bookings/<id>',methods=['DELETE'])
def delete_booking(id):
    try:
        conn=mysql.connect()
        cursor=conn.cursor()
        cursor.execute("DELETE FROM Booking where id=%s",id)
        conn.commit()
        return "done"
    except Exception as e:
        print("Booking ",e," Booking")
    finally:
        conn.close()
        cursor.close()
