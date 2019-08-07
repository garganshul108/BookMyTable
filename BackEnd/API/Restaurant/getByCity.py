import pymysql
from app import app
from db_config import mysql

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