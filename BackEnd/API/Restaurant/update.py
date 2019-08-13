import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from util.lastId import get_last_id
from util.sendGetResponse import send_get_response


def update_days(cursor,data,res_id):
    try:
        sql="UPDATE Day SET Monday=%s,Tuesday=%s,Wednesday=%s,Thursday=%s,Friday=%s,Saturday=%s,Sunday=%s WHERE restaurant_id=%s"
        values=(data['Monday'],data['Tuesday'],data['Wednesday'],data['Thursday'],data['Friday'],data['Saturday'],data['Sunday'],res_id)
        cursor.execute(sql,values)
    except Exception as e:
        print("Days ",e)

def update_location(cursor,data,loc_id):
    try:
        _address=data['address']['line_1']+data['address']['line_2']
        _city=data['city']
        _zipcode=None
        if data['zipcode'].isdigit():
            _zipcode=int(data['zipcode'])

        _locality=data['locality']
        _loc_verb=data['locality_verbose']
        sql="UPDATE Location SET city=%s,zipcode=%s,locality=%s,address=%s,locality_verbose=%s WHERE id=%s"
        values=(_city,_zipcode,_locality,_address,_loc_verb,loc_id)
        cursor.execute(sql,values)
    except Exception as e:
        print("LOCATION ",e," LOCATION")


def update_restaurant_table(cursor,data,res_id):
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
        sql="""UPDATE Restaurant SET
                name=%s,email=%s,average_cost_for_two=%s,cuisines=%s,timings=%s,establishment=%s,highlights=%s,thumb=%s,phone_numbers=%s,capacity=%s,opening_status=%s,website=%s
                WHERE id=%s"""
        values=(_name,_email,_ave_cost,_cuisines,_timings,_establishment,_highlights,_thumb,_phone,_capacity,_opening_status,_website,res_id)
        cursor.execute(sql,values)
    except Exception as e:
        print("resta",e,"resta")

def update_slot(cursor,data,res_id):
    try:
        for slot in data:
            sql="UPDATE Slot SET start_time=%s,end_time=%s WHERE restaurant_id=%s"
            values=(slot['start_time'],slot['end_time'],res_id)
            cursor.execute(sql,values)
    except Exception as e:
        print("slot ",e," slot")

@app.route('/api/restaurants/<id>',methods=['PUT'])
def update_restaurant(id):
    try:
        data=request.json
        print(type(data))
        resp={"status":"correct"}
        conn=mysql.connect()
        cursor=conn.cursor()
        loc_id=cursor.execute("SELECT location_id FROM Restaurant WHERE id=%s",id)
        update_location(cursor,data[0]['location'],loc_id)
        update_restaurant_table(cursor,data[0],id)  
        update_days(cursor,data[0]['days'],id)
        update_slot(cursor,data[0]['slots'],id)
        conn.commit()
        
    except Exception as e:
        print(e)
        resp=jsonify("ERROR")
        resp.status_code=500
        return resp
    finally:
        conn.close()
        cursor.close()
        return send_get_response(data,"No header")
