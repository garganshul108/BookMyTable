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

def rev_convert_time(time):
    st= str(time/2)+":"
    if (st%2)!=1:
        st=st+"30"
    return st
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

def insert_booking(cursor,date,res_id,size,start,end):
    try:
        sql="INSERT INTO Booking(restaurant_id,size,start_time,end_time,date) VALUES(%s,%s,%s,%s,%s)"
        values=(res_id,size,start,end,date)
        cursor.execute(sql,values)
    except Exception as e:
        print("Booking ",e," Booking")

def book_table():
    _date=data['date']
    _time=convert_time(data['time'])
    _size=data['size']
    _res_id=data['res_id']
    _user_id=data['user_id']

    newSlot={
        start:_time,
        end:_time+1
    }
    if(size>8)
        newSlot['end']=newSlot['end']+1
    conn=mysql.connect()
    cursor=conn.cursor(mysql.cursors.DictCursor)

    shifts=get_shifts(cursor)
    capacity=get_capacity(cursor)
    slots=get_slots(cursor,_date,_res_id)
    
    arr=[]
    for i in range(48):
        arr.append(0)

    arr[0]=capacity
    for shift in shifts:
        start=int(2*shift['start_time'])
        end=int(2*shift['end_time'])
        arr[start]=arr[start]-capacity
        if end>start:
            arr[end]=arr[end]+capacity

    for slot in slots:
        start=int(2*slot['start_time'])
        end=int(2*slot['end_time'])
        arr[start]=arr[start]+slot['size']
        if(end>start):
            arr[end]=arr[end]-slot['size']
    
    count=0
    for i in range(new_slot['start'],new_slot['end']):
        if arr[i]+_size >capacity:
            count=count+1
    
    if count==0:
        insert_booking(cursor,_date,_res_id,_size,rev_convert_time(new_slot['star']),rev_convert_time(new_slot['end']))
        return "Success"
    
    response_slots=[]

    c1=count
    j=new_slot['end']
    for i in range(new_slot['start'],48):
        if c1==0:
            response_slots.append({
                "start":i,
                "end":j
            })
            break
        
        if arr[i]+_size>capacity:
            c1=c1-1

        j=j+1
        if j<48 AND arr[j]+_size>capacity:
            c1=c1+1
    
    c1=count
    j=new_slot['end']
    for i in range(new_slot['start'],-1,-1):
        if c1==0:
            response_slots.append({
                "start":i,
                "end":j
            })
        if arr[j]+_size>capacity:
            c1=c1-1
        j=j-1
        
        if i>0 AND arr[i-1]+_size>capacity:
            c1=c1+1
    
    return jsonify(response_slots)





    
    


    

     




    





