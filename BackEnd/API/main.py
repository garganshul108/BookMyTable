import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from werkzeug import generate_password_hash, check_password_hash


def convert_restaurant(cursor, rows):
    for row in rows:
        cursor.execute("SELECT * FROM Location where id=%s",
                       row['location_id'])
        loc = cursor.fetchall()
        row['location'] = loc[0]

        cursor.execute("SELECT * FROM Hall_Size where id=%s",
                       row['capacity_id'])
        table = cursor.fetchall()
        row['table'] = table[0]
        del row['location_id']
        del row['capacity_id']


@app.route('/locations')
def get_location():
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute("SELECT * FROM Location")
        rows = cursor.fetchall()
        resp = jsonify(rows)
        resp.status_code = 200
        return resp
    except Exception as e:
        print(e)
    finally:
        cursor.close()
        conn.close()


@app.route('/locations/<city_name>')
def get_localities(city_name):
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute(
            "SELECT DISTINCT locality from Location WHERE Location.city=%s", city_name
        )
        resp = jsonify(cursor.fetchall())
        resp.status_code = 200
        return resp
    except Exception as e:
        print(e)
    finally:
        cursor.close()
        conn.close()


@app.route('/restaurants')
def get_restaurants():
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute(
            "SELECT * FROM Restaurant ")
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


@app.route('/restaurants/<city_name>')
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
        resp = jsonify(rows)
        return resp
    except Exception as e:
        print(e)
        return "error"
    finally:
        cursor.close()
        conn.close()


if __name__ == "__main__":
    app.run(debug=True)
