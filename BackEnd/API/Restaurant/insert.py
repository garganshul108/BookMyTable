import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from util.lastId import get_last_id
from util.sendGetResponse import send_get_response
from Restaurant.util.convertRestaurant import convert_restaurant

def insert_days(cursor,data,res_id):
        sql="INSERT INTO Day(restaurant_id,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday) VALUES(%s,%s,%s,%s,%s,%s,%s,%s)"
        values=(res_id,data['Monday'],data['Tuesday'],data['Wednesday'],data['Thursday'],data['Friday'],data['Saturday'],data['Sunday'])
        cursor.execute(sql,values)

def insert_location(cursor,data):
        _address=data['address']['line_1']+data['address']['line_2']
        _city=data['city']
        _zipcode=None
        if data['zipcode'].isdigit():
            _zipcode=int(data['zipcode'])
        _locality=data['locality']
        _loc_verb=data['locality_verbose']
        cursor.execute("SELECT * from Cities where name=%s",_city)
        if cursor.rowcount==0:
            cursor.execute("INSERT into Cities(name) values(%s)",_city)
        
        sql="INSERT INTO Location(city,zipcode,locality,address,locality_verbose) values(%s,%s,%s,%s,%s)"
        values=(_city,_zipcode,_locality,_address,_loc_verb)
        cursor.execute(sql,values)

def insert_highlights(data,cursor):
    cursor.execute("SELECT name FROM Highlights")
    l1=cursor.fetchall()
    l1=[i for sub in l1 for i in sub]
    new_list=list(set(data)-set(l1))
    for dd in new_list:
        cursor.execute("INSERT INTO Highlights(name) values(%s)",dd)

    return ", ".join(data)

def insert_establishments(data,cursor):
    cursor.execute("SELECT name FROM Establishments")
    l1=cursor.fetchall()
    l1=[i for sub in l1 for i in sub]
    new_list=list(set(data)-set(l1))
    for dd in new_list:
        cursor.execute("INSERT INTO Establishments(name) values(%s)",dd)

    return ", ".join(data)

def insert_cuisines(data,cursor):
    cursor.execute("SELECT name FROM Cuisines")
    l1=cursor.fetchall()
    l1=[i for sub in l1 for i in sub]
    new_list=list(set(data)-set(l1))
    for dd in new_list:
        cursor.execute("INSERT INTO Cuisines(name) values(%s)",dd)

    return ", ".join(data)

    

def insert_restaurant(cursor,data,_loc_id):
        _ave_cost=int("0"+data['average_cost_for_two'])
        _cuisines=insert_cuisines(data['cuisines'],cursor)
        _establishment=insert_establishments(data['establishment'],cursor)
        _highlights=insert_highlights(data['highlights'],cursor)

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

def insert_slot(cursor,data,res_id):
    for slot in data:
        sql="INSERT INTO Slot(restaurant_id,start_time,end_time) VALUES(%s,%s,%s)"
        values=(res_id,slot['start_time'],slot['end_time'])
        cursor.execute(sql,values)
    print("slot ",e," slot")

@app.route('/api/restaurants',methods=['POST'])
def add_restaurant():
    try:
        data=request.json
        print(request.files)
        resp={"status":"correct"}
        conn=mysql.connect()
        cursor=conn.cursor()
        cursor2=conn.cursor(pymysql.cursors.DictCursor)
        
        insert_location(cursor,data[0]['location'])
        loc_id=get_last_id(cursor)
        insert_restaurant(cursor,data[0],loc_id)  
        res_id=get_last_id(cursor)
        insert_days(cursor,data[0]['days'],res_id)
        insert_slot(cursor,data[0]['slots'],res_id)
        conn.commit()
        print(res_id)
        
        cursor2.execute("SELECT * FROM Restaurant where id=%s",res_id)
        rows=cursor2.fetchall()
        print(type(rows))
        convert_restaurant(cursor2, rows)
        return send_get_response(rows,"No header",code=201)
    except Exception as e:
        print(e)
        resp=jsonify("ERROR")
        resp.status_code=500
        return resp
    finally:
        conn.close()
        cursor.close()
        cursor2.close()
        
