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



@app.route('/deleteALL')
def drop_id():
    try:
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute("DELETE FROM Restaurant")
        cursor.execute("DELETE FROM Hall_Size")
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
