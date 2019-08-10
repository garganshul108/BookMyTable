import pymysql
import json
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from werkzeug import generate_password_hash, check_password_hash
import random
from decimal import Decimal
from Restaurant.util.LastId import get_last_id

with open('all_data.json') as json_file:
    data = json.load(json_file)
with open('Cities.json') as json_file:
    cities_data=json.load(json_file)

def update_availablity(loc_id,cursor):
    try:
        index1=random.randrange(0,6)
        arr=[1,1,1,1,1,1,1]
        arr[index1]=0
        sql="INSERT INTO Days(id,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday) VALUES(%s,%s,%s,%s,%s,%s,%s,%s)"
        values=(loc_id,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6])
        cursor.execute(sql,values)
    except Exception as e:
        print("Error",e,"Error")


def update_location(tt, loc_id, cursor):
    _city = tt['location']['city']
    _locality = tt['location']['locality']
    _zipcode = tt['location']['zipcode']
    _address = tt['location']['address']
    _verbose = tt['location']['locality_verbose']
    _latitude = Decimal(tt['location']['latitude'])
    _longitude = Decimal(tt['location']['longitude'])
    if _zipcode == "":
        _zipcode = None
    else:
        _zipcode = int(_zipcode)

    sql = "INSERT INTO Location(id,city,zipcode,locality,address,locality_verbose,latitude,longitude) VALUES(%s,%s,%s,%s,%s,%s,%s,%s)"
    value = (loc_id, _city, _zipcode, _locality,
             _address, _verbose, _latitude, _longitude)
    cursor.execute(sql, value)


def update_restaurant(tt, loc_id, cursor):
    _id = tt['id']
    _name = tt['name']
    _average_cost = tt['average_cost_for_two']
    _cuisines = tt['cuisines']
    _timings = tt['timings']
    _establishment = ""

    for estb in tt['establishment']:
        _establishment = _establishment+estb

    _highlights = ""
    for hlt in tt['highlights']:
        _highlights = _highlights+","+hlt

    _thumb = tt['thumb']
    _phone_numbers = tt['phone_numbers']
    _capacity=random.randrange(20,50)
    sql = "INSERT INTO Restaurant(id,location_id,availablity_id,name,average_cost_for_two,cuisines,timings,establishment,highlights,thumb,phone_numbers,capacity) VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
    value = (_id, loc_id,loc_id, _name, _average_cost, _cuisines, _timings, _establishment, _highlights,
             _thumb, _phone_numbers,_capacity)
    cursor.execute(sql, value)


@app.route('/init')
def get_restaurant():
    try:
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute("DELETE FROM Photos")
        cursor.execute("DELETE FROM Review")
        cursor.execute("DELETE FROM Slot")
        cursor.execute("DELETE FROM Restaurant")
        cursor.execute("DELETE FROM Days")
        cursor.execute("DELETE FROM Location")
        cursor.execute("DELETE FROM Cities")

        conn.commit()
        loc_id = 1
        # for tt in cities_data:
        #     sql="INSERT INTO Cities(id,name,state) VALUES(%s,%s,%s)"
        #     values=(int(tt['id']),tt['name'],tt['state'])
        #     cursor.execute(sql,values)
        #     conn.commit()
        for tt in data:
            update_availablity(loc_id,cursor)
            update_location(tt, loc_id,cursor)
            update_restaurant(tt, loc_id, cursor)

            conn.commit()
            loc_id = loc_id+1
            print("YESS")

    except Exception as e:
        print(e)
        return "except"
    finally:
        cursor.close()
        conn.close()
        print("DFSDF")
        return "finla"


if __name__ == "__main__":
    app.run(debug=True)
