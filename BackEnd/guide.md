1. First start the Apache web server and open localhost/phpmyadmin
2. Create database BookMyTable and import BookMyTable.sql (This will create the tables and fill the data)
3. Give the execute permissions to run.sh and install.sh
4. Execute install.sh
5. Change BackEnd/API/db_config.py file as per your username password
6. Execute run.sh (or in API folder run python3 main.py)
7. To reinitialize database (in API folder run python3 initiaze.py) and open [http://127.0.0.1:5000/init](http://127.0.0.1:5000/init) (GET Request)

8. If reinitialized database abort the running process and in API folder run (python3 main.py)

9. [http://127.0.0.1:5000/deleteAll](http://127.0.0.1:5000/deleteAll) clears the database (GET Request)

10. [http://127.0.0.1:5000/api/restaurants](http://127.0.0.1:5000/restaurants) accepts city as query parameter to filter by city if not given any query string it will return a list of all restaurants (GET Request)

11. [http://127.0.0.1:5000/restaurants](http://127.0.0.1:5000/restaurants) insert a restaurant (POST Request)

12. [http://127.0.0.1:5000/api/restaurants/<restaurant_id>](http://127.0.0.1:5000/api/restaurants/<restaurant_id>) get restaurant by its id (GET Request)

13. [http://127.0.0.1:5000/api/restaurants/<restaurant_id>](http://127.0.0.1:5000/api/restaurants/<restaurant_id>) delete the restaurant by this given id (DELETE Request)

14. [http://127.0.0.1:5000/api/restaurants/<restaurant_id>](http://127.0.0.1:5000/api/restaurants/<restaurant_id>) updates restaurant of given id (PUT Request) (will try patch later)

13) [http://127.0.0.1:5000/api/locations](http://127.0.0.1:5000/locations) get All locations (GET Request) (testing purpose)

14) [http://127.0.0.1:5000/api/cities](http://127.0.0.1:5000/api/cities) gets all the cities of india (GET Request)

15) [http://127.0.0.1:5000/api/localities](http://127.0.0.1:5000/api/localities) A query string for city name must be provided if not then error code 400 is thrown. gets all the localities of the city (GET Request)
