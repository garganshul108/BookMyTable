import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from werkzeug import generate_password_hash, check_password_hash
from testing import test




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

#data should be location dictionary
def insert_location(cursor,data):
    try:
        _address=data['address']['line_1']+data['address']['line_2']
        _city=data['city']
        _zipcode=None
        if data['zipcode'].isdigit():
            _zipcode=int(data['zipcode'])

        _locality=data['locality']
        _loc_verb=data['locality_verbose']
        sql="INSERT INTO Location(city,zipcode,locality,address,locality_verbose) values(%s,%s,%s,%s,%s)"
        values=(_city,_zipcode,_locality,_address,_loc_verb)
        cursor.execute(sql,values)
    except Exception as e:
        print("ERROR")


def get_last_id(cursor):
    try:
        cursor.execute("SELECT LAST_INSERT_ID()")
        rows=cursor.fetchall()
        
        return rows[0][0]
    except Exception as e:
        print("ID",e,"ID")

def insert_table(cursor,data):
    try:
        eight=int("0"+data['size_eight'])
        four=int("0"+data['size_four'])
        one=int("0"+data['size_one'])
        six=int("0"+data['size_six'])
        ten=int("0"+data['size_ten'])
        two=int("0"+data['size_two'])
        sql="INSERT INTO Hall_Size(size_ten,size_eight,size_six,size_four,size_two,size_one) VALUES(%s,%s,%s,%s,%s,%s)"
        values=(ten,eight,six,four,two,one)
        cursor.execute(sql,values)
    except Exception as e:
        print("table",e,"table")


def insert_restaurant(cursor,data,_loc_id,_capacity_id):
    try:
        _ave_cost=int("0"+data['average_cost_for_two'])
        _cuisines=data['cuisines']
        _establishment=""
        for est in data['establishment']:
            _establishment=_establishment+est
        _highlights=data['highlights']
        _name=data['name']
        _phone=data['phone']['std']+" , "+data['phone']['number']
        _thumb=data['thumb']
        _timings=data['timings']
        _opening_status=data['opening_status']
        _email=data['email']
        _website=data['website']
        sql="""INSERT INTO 
            Restaurant(location_id,name,email,average_cost_for_two,cuisines,timings,establishment,highlights,thumb,phone_numbers,capacity_id,opening_status,website)
            VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"""
        values=(_loc_id,_name,_email,_ave_cost,_cuisines,_timings,_establishment,_highlights,_thumb,_phone,_capacity_id,_opening_status,_website)
        cursor.execute(sql,values)
    except Exception as e:
        print("resta",e,"resta")


@app.route('/restaurant',methods=['POST'])
def add_restaurant():
    try:
        data=request.json
        print(type(data))
        resp={"status":"correct"}
        conn=mysql.connect()
        cursor=conn.cursor()

        # print(data[0]['location'])
        insert_location(cursor,data[0]['location'])
        loc_id=get_last_id(cursor)
        insert_table(cursor,data[0]['tables'])
        capacity_id=get_last_id(cursor)
        insert_restaurant(cursor,data[0],loc_id,capacity_id)   

        conn.commit()
        
    except Exception as e:
        print("ERROR",e,"ERROR")
        return "error"
    finally:
        conn.close()
        cursor.close()
        return jsonify(resp)


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
