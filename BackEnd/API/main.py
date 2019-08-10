import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from werkzeug import generate_password_hash, check_password_hash

from Restaurant import getAll
from Restaurant import insert
from Restaurant import getByCity
from Restaurant.Location import getAll
from Restaurant.Location import getLocalityByCityName
from LoginSignUp import signup
from LoginSignUp import login
from Booking import getAll
from Booking import insert
from Booking import deleteById
from Booking import deleteAll



@app.route('/deleteALL')
def drop_id():
    try:
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute("DELETE FROM Booking")
        cursor.execute("DELETE FROM Slot")
        cursor.execute("DELETE FROM Restaurant")
        cursor.execute("DELETE FROM Days")
        cursor.execute("DELETE FROM Location")

        conn.commit()
    except Exception as e:
        print(e)
        return "except"
    finally:
        cursor.close()
        conn.close()
        return "final"



if __name__ == "__main__":
    app.run(debug=True)
