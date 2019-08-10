import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from Restaurant.util.convertRestaurant import convert_restaurant
from LoginSignUp.util.required import token_required


# {
#     "x-access-token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJwdWJsaWNfaWQiOjMsImV4cCI6MTU2NTM0OTM5OH0.uFXmwf8BeEI2c3HRxw2d1UwYrVnRC3HFC3SBSt-Lvng"
# }

@app.route('/restaurants/<city_name>')
@token_required
def get_restaurants_byCity(current_user,city_name):
    
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        sql = """SELECT * from Restaurant
        WHERE (SELECT city from Location WHERE Location.id=Restaurant.location_id)=%s
        """
        cursor.execute(sql, (city_name,))
        rows = cursor.fetchall()
        convert_restaurant(cursor, rows)
        resp = jsonify(rows)
        resp.status_code = 200
        return resp
    except Exception as e:
        print(e)
        return "error"
    finally:
        cursor.close()
        conn.close()