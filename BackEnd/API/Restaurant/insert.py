import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from Restaurant.util.LastId import get_last_id

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



# def insert_table(cursor,data):
#     try:
#         eight=int("0"+data['size_eight'])
#         four=int("0"+data['size_four'])
#         one=int("0"+data['size_one'])
#         six=int("0"+data['size_six'])
#         ten=int("0"+data['size_ten'])
#         two=int("0"+data['size_two'])
#         sql="INSERT INTO Hall_Size(size_ten,size_eight,size_six,size_four,size_two,size_one) VALUES(%s,%s,%s,%s,%s,%s)"
#         values=(ten,eight,six,four,two,one)
#         cursor.execute(sql,values)
#     except Exception as e:
#         print("table",e,"table")


# def insert_restaurant(cursor,data,_loc_id,_capacity_id):
def insert_restaurant(cursor,data,_loc_id):
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
        _capacity=int("0"+data['capacity'])
        sql="""INSERT INTO 
            Restaurant(location_id,name,email,average_cost_for_two,cuisines,timings,establishment,highlights,thumb,phone_numbers,capacity,opening_status,website)
            VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"""
        values=(_loc_id,_name,_email,_ave_cost,_cuisines,_timings,_establishment,_highlights,_thumb,_phone,_capacity,_opening_status,_website)
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

        insert_location(cursor,data[0]['location'])
        loc_id=get_last_id(cursor)
        # insert_table(cursor,data[0]['tables'])
        # capacity_id=get_last_id(cursor)
        insert_restaurant(cursor,data[0],loc_id)   
        conn.commit()
        
    except Exception as e:
        print("ERROR",e,"ERROR")
        return "error"
    finally:
        conn.close()
        cursor.close()
        return jsonify(resp)
