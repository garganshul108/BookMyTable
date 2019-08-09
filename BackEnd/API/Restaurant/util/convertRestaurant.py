def convert_restaurant(cursor, rows):
    for row in rows:
        cursor.execute("SELECT * FROM Location where id=%s",
                       row['location_id'])
        loc = cursor.fetchall()
        row['location'] = loc[0]

        cursor.execute("SELECT * FROM Days where id=%s",
                       row['availablity_id'])
        days=cursor.fetchall()
        row['days']=days[0]
        
        del row['availablity_id']
        del row['location_id']