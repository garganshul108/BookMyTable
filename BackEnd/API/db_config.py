from app import app
from flaskext.mysql import MySQL

mysql = MySQL()

# MySQL configurations
app.config['MYSQL_DATABASE_USER'] = 'phpmyadminuser'
app.config['MYSQL_DATABASE_PASSWORD'] = 'mysql'
app.config['MYSQL_DATABASE_DB'] = 'BookMyTable'
# app.config['MYSQL_DATABASE_HOST'] = 'bookmytable1.cpd6yq0bvtmu.us-east-2.rds.amazonaws.com'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)
