1. First start the Apache web server and open localhost/phpmyadmin then import BookMyTable_schema.sql
2. Give the execute permissions to run.sh and install.sh (int API folder also change the db_config.py file as per your username password)
3. Execute install.sh
4. Then execute run.sh

5. [http://127.0.0.1:5000/restaurants](http://127.0.0.1:5000/restaurants) we can get all restaurants data in json (GET Request)

6. [http://127.0.0.1:5000/deleteAll](http://127.0.0.1:5000/deleteAll) clears the database (GET Request)

7. [http://127.0.0.1:5000/restaurants/city/<city_name>](http://127.0.0.1:5000/restaurants/city/<city_name>) gets all restaurants in the city (GET Request)

8. [http://127.0.0.1:5000/restaurants/<id>](http://127.0.0.1:5000/restaurants/<id>) get restaurant by its id (GET Request)

9. [http://127.0.0.1:5000/restaurants](http://127.0.0.1:5000/restaurants) (POST Request)

10. [http://127.0.0.1:5000/locations](http://127.0.0.1:5000/locations) get All locations (GET Request)

11. [http://127.0.0.1:5000/locations/<id>](http://127.0.0.1:5000/locations/<id>) gets All the locations with id (GET Request)

12. [http://127.0.0.1:5000/locations/city/<city_name>/localities](http://127.0.0.1:5000/locations/city/<city_name>/localities) gets the locations of the city (GET request)

13. [http://127.0.0.1:5000/reviews](http://127.0.0.1:5000/reviews) gets all reviews (GET request)

14. [http://127.0.0.1:5000/restaurants/<restaurant_id>/reviews](http://127.0.0.1:5000/restaurants/<restaurant_id>/reviews) gets all reviews of restaurant (GET request)

15. [http://127.0.0.1:5000/users/<user_id>/reviews](http://127.0.0.1:5000/users/<user_id>/reviews)
    gets all reviews by user (GET request)

16. [http://127.0.0.1:5000/restaurants/reviews](http://127.0.0.1:5000/restaurants/reviews) post a review (POST request)

17. [http://127.0.0.1:5000/bookings](http://127.0.0.1:5000/bookings) deletes all the bookings (DELETE request))

18. [http://127.0.0.1:5000/bookings/<id>](http://127.0.0.1:5000/bookings/<id>) deletes a booking by id (DELETE request)

19. [http://127.0.0.1:5000/bookings](http://127.0.0.1:5000/bookings) gets all bookings (GET request)

20. [http://127.0.0.1:5000/restaurants/<restaurant_id>/bookings](http://127.0.0.1:5000/restaurants/<restaurant_id>/bookings) gets all booking of the restaurant
    (GET request)

21. [http://127.0.0.1:5000/restaurants/bookings](http://127.0.0.1:5000/restaurants/bookings) insert a booking (POST request)
    return code 200 if successfull, 202 where option is given to choose closest slot, 205 if no slot available for today
