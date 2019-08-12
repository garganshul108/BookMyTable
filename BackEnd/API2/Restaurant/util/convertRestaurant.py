from CommentRating.getByRestaurantId import get_reviews_by_restaurant_id
def convert_restaurant(cursor, rows):
    for row in rows:
        cursor.execute("SELECT * FROM Location where id=%s",
                       row['location_id'])
        loc = cursor.fetchall()
        row['location'] = loc[0]

        cursor.execute("SELECT * FROM Day where id=%s",
                       row['availablity_id'])
        days=cursor.fetchall()
        row['days']=days[0]
        
        cursor.execute("SELECT * FROM Slot where restaurant_id=%s",row['id'])
        slots=cursor.fetchall()
        row['slots']=slots

        row['reviews']=get_reviews_by_restaurant_id(row['id']).json
        
        del row['availablity_id']
        del row['location_id']
        