import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
from decimal import Decimal
from operator import itemgetter


# data=[
#     date:"1999-08-23"
#     time:"23:00"
#     size:4
#     res_id:"1"
#     user_id:"1"
# ]
def convert_time(time):
    ans=time[0]+time[1]
    if time[3]=='0' and time[4]=='0':
        return float(ans)
    return (float(ans)+(0.5))

def rev_convert_time(time):
    st= str(int(time/2))+":"
    if (time%2)!=0:
        st=st+"30"
    else:
        st=st+"00"
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
    cursor.execute("SELECT * FROM Booking WHERE date=%s AND restaurant_id=%s",(date,res_id))
    slots=cursor.fetchall()
    for slot in slots:
        slot['start_time']=convert_time(slot['start_time'])
        slot['end_time']=convert_time(slot['end_time'])
    return slots

def insert_booking(cursor,res_id,date,size,start,end):
    try:
        sql="INSERT INTO Booking(restaurant_id,size,start_time,end_time,date) VALUES(%s,%s,%s,%s,%s)"
        values=(res_id,size,start,end,date)
        cursor.execute(sql,values)
    except Exception as e:
        print("Booking ",e," Booking")

def toI(value):
    return int(2*value)

@app.route('/booking',methods=['POST'])
def book_table():
    data=request.json[0]
    _date=data['date']
    _time=convert_time(data['time'])
    _size=data['size']
    _res_id=int(data['res_id'])
    # _user_id=data['user_id']

    newSlot={
        "start":toI(_time),
        "end":toI(_time+1)
    }
    if(_size>8):
        newSlot['end']=newSlot['end']+1
    conn=mysql.connect()
    cursor=conn.cursor(pymysql.cursors.DictCursor)

    shifts=get_shifts(cursor,_res_id)
    capacity=get_capacity(cursor,_res_id)
    slots=get_slots(cursor,_date,_res_id)
    if _size>capacity:
        return "Not Possible choose a diffrent size"    


    arr=[]
    for i in range(48):
        arr.append(0)

    arr[0]=capacity
    for shift in shifts:
        start=toI(shift['start_time'])
        end=toI(shift['end_time'])
        arr[start]=arr[start]-capacity
        if end>start:
            arr[end]=arr[end]+capacity

    print(arr)
    for slot in slots:
        start=toI(slot['start_time'])
        end=toI(slot['end_time'])
        arr[start]=arr[start]+slot['size']
        if(end>start):
            arr[end]=arr[end]-slot['size']
    
    for i in range(1,48):
        arr[i]=arr[i]+arr[i-1]

    print(arr)
    count=0
    for i in range(newSlot['start'],newSlot['end']):
        if arr[i]+_size >capacity:
            count=count+1
    
    
    if count==0:
        insert_booking(cursor,_res_id,_date,_size,rev_convert_time(newSlot['start']),rev_convert_time(newSlot['end']))
        conn.commit()
        conn.close()
        cursor.close()
        return "Success"
    
    
    
    responseSlots=[]

    c1=count
    j=newSlot['end']
    for i in range(newSlot['start'],48):
        if c1==0:
            responseSlots.append({
                "start":rev_convert_time(i)
            })
            break
        
        if arr[i]+_size>capacity:
            c1=c1-1

        if j<48 and arr[j]+_size>capacity:
            c1=c1+1
        j=j+1
    
    c1=count
    j=newSlot['end']
    print("the count is ",count)
    for i in range(newSlot['start'],-1,-1):
        if c1==0:
            responseSlots.append({
                "start":rev_convert_time(i)
            })
            break
        
        j=j-1
        if arr[j]+_size>capacity:
            c1=c1-1
        
        
        if i>0 and arr[i-1]+_size>capacity:
            c1=c1+1
    
    return jsonify(responseSlots)





    
    


    

     




    





