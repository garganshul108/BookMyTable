import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from decimal import Decimal

@app.route('/booking',methods=['POST'])
# data=[
#     date:"1999-08-23"
#     time:"23:00"
#     size:4
#     res_id:"1"
#     user_id:"1"
# ]
def convert_time(time):
    ans=time[0]+time[1]
    if time[3]=='0' and time[4]=='0'
        return Double(ans)
    return (Double(ans)+(0.5))

def get_shifts(cursor,res_id):
    cursor.execute("SELECT * FROM Slot WHERE restaurant_id=%s" ,res_id)
    shifts=cursor.fetchall()
    for shift in shifts:
        shift['start_time']=convert_time(shift['start_time'])
        shift['end_time']=convert_time(shift['end_time'])

    shifts=sorted(shifts,key=itemgetter('start_time','end_time'))
    return shifts

def get_capacity(cursor,res_id):
    cursor.execute("SELECT capacity FROM Restaurant WHERE id=%s",res_id)
    return (cursor.fetchall())[0]['capacity']

def get_slots(cursor,date,res_id):
    cursor.execute("SELECT * FROM Booking WHERE date=%s AND restaurant_id=%s",date,res_id)
    slots=cursor.fetchall()
    for slot in slots:
        slot['start_time']=convert_time(slot['start_time'])
        slot['end_time']=convert_time(slot['end_time'])
    return slots

def book_table():
    _date=data['date']
    _time=convert_time(data['time'])
    _size=data['size']
    _res_id=data['res_id']
    _user_id=data['user_id']

    newSlot={
        start:_time
        end:_time+1
    }
    if(size>8)
        newSlot['end']=newSlot['end']+1
    conn=mysql.connect()
    cursor=conn.cursor(mysql.cursors.DictCursor)

    shifts=get_shifts(cursor)
    capacity=get_capacity(cursor)
    slots=get_slots(cursor,_date,_res_id)
    

    arr=




    





