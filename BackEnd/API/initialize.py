import pymysql
import json
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from werkzeug import generate_password_hash, check_password_hash
import random

with open('all_data.json') as json_file:
    data = json.load(json_file)

total_location = 0
@app.route('/initLocation')
def get_location():
    try:
        conn = mysql.connect()
        cursor = conn.cursor()

        _id = 1
        for tt in data:
            _city = tt['location']['city']
            _locality = tt['location']['locality']
            _zipcode = tt['location']['zipcode']
            _address = tt['location']['address']
            _verbose = tt['location']['locality_verbose']
            if _zipcode == "":
                _zipcode = None
            else:
                _zipcode = int(_zipcode)

            sql = "INSERT INTO Location(id,city,zipcode,locality,address,locality_verbose) VALUES(%s,%s,%s,%s,%s,%s)"
            value = (_id, _city, _zipcode, _locality, _address, _verbose)
            cursor.execute(sql, value)
            conn.commit()
            _id = _id+1
        return "done"
    except Exception as e:
        return "except"
    finally:
        cursor.close()
        conn.close()
        print("DFSDF")
        return "finla"
    total_location = _id


@app.route('/initRestaurant')
def get_restaurant():
    try:
        conn = mysql.connect()
        cursor = conn.cursor()

        loc_id = 1
        for tt in data:
            _id = tt['id']
            _name = tt['name']
            _average_cost = tt['average_cost_for_two']
            _cuisines = tt['cuisines']
            _timings = tt['timings']
            _establishment = ""
            # print(type(tt['establishment']))
            for estb in tt['establishment']:
                _establishment = _establishment+estb

            _highlights = ""
            for hlt in tt['highlights']:
                _highlights = _highlights+","+hlt

            _thumb = tt['thumb']
            _phone_numbers = tt['phone_numbers']
            _size_ten = random.randrange(4, 8)
            _size_eight = random.randrange(5, 10)
            _size_six = random.randrange(8, 15)
            _size_four = random.randrange(10, 20)
            _size_two = random.randrange(15, 25)
            _size_one = random.randrange(20, 30)

            sql = "INSERT INTO Restaurant(id,location_id,name,average_cost_for_two,cuisines,timings,establishment,highlights,thumb,phone_numbers,size_ten,size_eight,size_six,size_four,size_two,size_one) VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"

            value = (_id, loc_id, _name, _average_cost, _cuisines, _timings, _establishment, _highlights,
                     _thumb, _phone_numbers, _size_ten, _size_eight, _size_six, _size_four, _size_two, _size_one)
            cursor.execute(sql, value)
            conn.commit()
            loc_id = loc_id+1
            print("YESS")

    except Exception as e:
        return "except"
    finally:
        cursor.close()
        conn.close()
        print("DFSDF")
        return "finla"


if __name__ == "__main__":
    app.run(debug=True)
