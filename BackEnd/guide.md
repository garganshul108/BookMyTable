1. First start the Apache web server and open localhost/phpmyadmin
2. Create database BookMyTable and import BookMyTable.sql (This will create the tables and fill the data)
3. Give the execute permissions to run.sh and install.sh
4. Execute install.sh
5. Change BackEnd/API/db_config.py file as per your username password
6. Execute run.sh (or in API folder run python3 main.py)

7. To reinitialize database (in API folder run python3 initiaze.py) and open [http://127.0.0.1:5000/init](http://127.0.0.1:5000/init) (GET Request)

8. Format for the insert request for restaurant is given in formatRequest.json

9. If reinitialized database abort the running process and in API folder run (python3 main.py)

10. [http://127.0.0.1:5000/deleteAll](http://127.0.0.1:5000/deleteAll) clears the database (GET Request)(Not for production)

11. [http://127.0.0.1:5000/api/restaurants](http://127.0.0.1:5000/restaurants) query="restaurantId","meta","city"
    where meta="highlights","establishments","cuisines" used to get all meta's of the city with there restaurant count(GET Request)

12. [http://127.0.0.1:5000/api/restaurants](http://127.0.0.1:5000/restaurants) insert a restaurant or say restaurant signup (POST Request) returns a token in header['token']

14) [http://127.0.0.1:5000/api/restaurants](http://127.0.0.1:5000/api/restaurants) delete the currently logged in restaurant (DELETE Request)

15) [http://127.0.0.1:5000/api/restaurants](http://127.0.0.1:5000/api/restaurants) updates currently logged in restaurant (PUT Request) (will try patch later)

16) [http://127.0.0.1:5000/api/locations](http://127.0.0.1:5000/locations) get All locations (GET Request) (testing purpose)

17) [http://127.0.0.1:5000/api/cities](http://127.0.0.1:5000/api/cities) gets all the cities of india (GET Request)

18) [http://127.0.0.1:5000/api/localities](http://127.0.0.1:5000/api/localities) A query string for city name must be provided if not then error code 400 is thrown. gets all the localities of the city (GET Request)

19) [http://127.0.0.1:5000/api/users/bookings](http://127.0.0.1:5000/api/users/bookings) get all booking of currently logged in user(GET request)

20) [http://127.0.0.1:5000/api/restaurants/bookings](http://127.0.0.1:5000/api/restaurants/bookings) get all booking of currently logged in restaurant(GET request)

21) [http://127.0.0.1:5000/api/users/bookings](http://127.0.0.1:5000/api/users/bookings) does booking for currently logged in user(POST request)

22) [http://127.0.0.1:5000/api/users/bookings](http://127.0.0.1:5000/api/users/bookings) query="id" if not given will through error 400 Bad Request(DELETE request)

23) [http://127.0.0.1:5000/api/reviews](http://127.0.0.1:5000/api/reviews) userId , restaurantId as query string (GET request)

24) [http://127.0.0.1:5000/api/reviews](http://127.0.0.1:5000/api/reviews) user login required (POST request))

25) [http://127.0.0.1:5000/api/reviews](http://127.0.0.1:5000/api/reviews) expect "id" as query parameter else throw exception 400 login required (PUT request)

26) [http://127.0.0.1:5000/api/reviews](http://127.0.0.1:5000/api/reviews) expect "id" as query parameter else throw exception 400 login required (PUT request)

27) [http://127.0.0.1:5000/api/cuisines](http://127.0.0.1:5000/api/cuisines) (GET request)

28) [http://127.0.0.1:5000/api/establishments](http://127.0.0.1:5000/api/establishments) (GET request)

29) [http://127.0.0.1:5000/api/highlights](http://127.0.0.1:5000/api/highlights) (GET request)

31. [http://127.0.0.1:5000/api/users](http://127.0.0.1:5000/api/users) get the profile details of the user (GET request ) login required

32. [http://127.0.0.1:5000/api/users](http://127.0.0.1:5000/api/users) update profile details (PUT request ) login required

33. [http://127.0.0.1:5000/api/users](http://127.0.0.1:5000/api/users) signup (POST request )

34. [http://127.0.0.1:5000/api/beentheres](http://127.0.0.1:5000/api/beentheres) user login required (POST GET request )

35. [http://127.0.0.1:5000/api/bookmarks](http://127.0.0.1:5000/api/bookmarks) user login required(POST GET request )

36. [http://127.0.0.1:5000/api/beentheres](http://127.0.0.1:5000/api/beentheres) "id" as query and login required (DELETE request )I have to check it

37. [http://127.0.0.1:5000/api/bookmarks](http://127.0.0.1:5000/api/beentheres) "id" as query and login required (DELETE request )I have to check it

38. [http://127.0.0.1:5000/api/login](http://127.0.0.1:5000/api/login) (GET Request) SEND credentials in authorisation not json
