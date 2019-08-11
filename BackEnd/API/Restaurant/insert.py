import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from util.lastId import get_last_id


def insert_days(cursor,data):
    try:
        sql="INSERT INTO Days(Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday) VALUES(%s,%s,%s,%s,%s,%s,%s)"
        values=(data['Monday'],data['Tuesday'],data['Wednesday'],data['Thursday'],data['Friday'],data['Saturday'],data['Sunday'])
        cursor.execute(sql,values)
    except Exception as e:
        print("Days ",e)

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


def insert_restaurant(cursor,data,_loc_id,days_id):
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
            Restaurant(location_id,availablity_id,name,email,average_cost_for_two,cuisines,timings,establishment,highlights,thumb,phone_numbers,capacity,opening_status,website)
            VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"""
        values=(_loc_id,days_id,_name,_email,_ave_cost,_cuisines,_timings,_establishment,_highlights,_thumb,_phone,_capacity,_opening_status,_website)
        cursor.execute(sql,values)
    except Exception as e:
        print("resta",e,"resta")

def insert_slot(cursor,data,res_id):
    try:
        for slot in data:
            sql="INSERT INTO Slot(restaurant_id,start_time,end_time) VALUES(%s,%s,%s)"
            values=(res_id,slot['start_time'],slot['end_time'])
            cursor.execute(sql,values)
    except Exception as e:
        print("slot ",e," slot")

@app.route('/restaurants',methods=['POST'])
def add_restaurant():
    try:
        data=request.json
        print(type(data))
        resp={"status":"correct"}
        conn=mysql.connect()
        cursor=conn.cursor()

        insert_days(cursor,data[0]['days'])
        days_id=get_last_id(cursor)
        insert_location(cursor,data[0]['location'])
        loc_id=get_last_id(cursor)
        insert_restaurant(cursor,data[0],loc_id,days_id)  
        res_id=get_last_id(cursor)
        insert_slot(cursor,data[0]['slots'],res_id)
        conn.commit()
        
    except Exception as e:
        print("ERROR",e,"ERROR")
        return "error"
    finally:
        conn.close()
        cursor.close()
        return jsonify(resp)
