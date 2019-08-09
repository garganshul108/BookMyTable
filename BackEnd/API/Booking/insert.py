import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from decimal import Decimal

@app.route(/booking,method='POST')
# data=[
#     date:"1999-08-23"
#     time:"23:00"
#     size:"4"
#     res_id:"1"
#     user_id:"1"
# ]
def convert_time(time):
    ans=time[0]+time[1]
    if time[3]=='0' and time[4]=='0'
        return Double(ans)
    return (Double(ans)+(0.5))

def book_table():
    _date=data['date']
    _time=convert_time(data['time'])
    _size=int(data['size'])
    _res_id=int(res_id)
    _user_id=int(user_id)

    newSlot={
        start:_time
        end:_time+1
    }
    if(size>8)
        newSlot['end']=newSlot['end']+1
    
    conn=mysql.connect()
    cursor=conn.cursor()
    cursor.execute("SELECT * FROM Slot WHERE date=%s AND restaurant_id=%s" ,date,res_id)
    slots=cursor.fetchall()
    for slot in slots:
        slot['start_time']=convert_time(slot['start_time'])
        slot['end_time']=convert_time(slot['end_time'])
    cursor.execute("SELECT capacity FROM Restaurant WHERE id=%s",res_id)
    slots=sorted(slots,key=itemgetter('start_time','end_time'))





