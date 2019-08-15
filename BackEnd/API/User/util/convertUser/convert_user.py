import pymysql
from app import app
from db_config import mysql
from flask import jsonify,flash,request
from Restaurant.util.convertRestaurant import convert_restaurant
from util.sendGetResponse import send_get_response
from LoginSignUp.util.required import token_required
from User.util.convertUser import convert_user

def convert_users(cursor,rows):
    for row in rows:
        cursor.execute("SELECT * from BeenThere where user_id=%s",row['id'])
        beentheres=cursor.fetchall()
        for beenthere in beentheres:
            sql="""SELECT Restaurant.id, Restaurant.name, Location.address,Location.city
                    FROM Restaurant 
                    JOIN Location ON Restaurant.location_id=Location.id 
                    WHERE Restaurant.id=%s"""
            cursor.execute(sql,(beenthere['restaurant_id']))
            rrs=cursor.fetchall()[0]
            beenthere['restaurant']=rrw
            del beenthere['restaurant_id']
        row['beenthere']=beentheres