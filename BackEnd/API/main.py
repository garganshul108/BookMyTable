import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from werkzeug import generate_password_hash, check_password_hash

from Restaurant import get
from Restaurant import insert
from Restaurant import delete
from Restaurant import update
from Restaurant import getById

from Location import getAll
from Location import getLocalitiesByCity
from Location import getAllCities
from LoginSignUp import signup
from LoginSignUp import login
from Booking import insert
from Booking import deleteById
from Booking import deleteAll
from CommentRating import insert
from CommentRating import getAll
from CommentRating import getByRestaurantId
from CommentRating import getByUserId


@app.route('/')
def JJ():
    print("SERVER IS RUNNING")
@app.route('/deleteALL')
def drop_id():
    try:
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute("DELETE FROM Photo")
        cursor.execute("DELETE FROM Review")
        cursor.execute("DELETE FROM Slot")
        cursor.execute("DELETE FROM Booking")
        cursor.execute("DELETE FROM Restaurant")
        cursor.execute("DELETE FROM Day")
        cursor.execute("DELETE FROM Location")
        cursor.execute("DELETE FROM Cities")

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
