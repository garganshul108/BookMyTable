import pymysql
from app import app
from db_config import mysql
from flask import flash,jsonify,request,send_from_directory
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

from Booking import get
from Booking import insert
from Booking import delete
from Booking import deleteAll
from CommentRating import insert
from CommentRating import delete
from CommentRating import update
from CommentRating import get

from Common import getAllCuisines
from Common import getAllHighlights
from Common import getAllEstablishments


@app.route('/')
def JJ():
    print("SERVER IS RUNNING")
    return "SERVER IS RUNNING"

@app.route('/html/<path:path>')
def send_html(path):
    return send_from_directory('static',path)

@app.route('/deleteALL')
def drop_id():
    try:
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute("DELETE FROM Photo")
        cursor.execute("DELETE FROM Review")
        cursor.execute("DELETE FROM Slot")
        cursor.execute("DELETE FROM Booking")
        cursor.execute("DELETE FROM Day")
        cursor.execute("DELETE FROM Restaurant")
        cursor.execute("DELETE FROM Location")
        # cursor.execute("DELETE FROM Cities")
        cursor.execute("DELETE FROM Cuisines")
        cursor.execute("DELETE FROM Establishments")
        cursor.execute("DELETE FROM Highlights")

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
