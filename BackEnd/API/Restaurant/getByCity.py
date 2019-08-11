import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from Restaurant.util.convertRestaurant import convert_restaurant
from LoginSignUp.util.required import token_required
from util.sendGetResponse import send_get_response

@app.route('/restaurants/city/<city_name>')
# @token_required
# def get_restaurants_byCity(current_user,city_name):
def get_restaurants_byCity(city_name):
    
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        sql = """SELECT * from Restaurant
        WHERE (SELECT city from Location WHERE Location.id=Restaurant.location_id)=%s
        """
        cursor.execute(sql, (city_name,))
        rows = cursor.fetchall()

        convert_restaurant(cursor, rows)
        return send_get_response(rows,"No restaurant found for given criteria")
    except Exception as e:
        print(e)
        resp=jsonify("ERROR")
        resp.status_code=500
        return resp
    finally:
        cursor.close()
        conn.close()