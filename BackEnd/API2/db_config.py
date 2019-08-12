from app import app
from flaskext.mysql import MySQL

mysql = MySQL()

# MySQL configurations
app.config['MYSQL_DATABASE_USER'] = 'sumit'
app.config['MYSQL_DATABASE_PASSWORD'] = 'qwerty'
app.config['MYSQL_DATABASE_DB'] = 'BookMyTable'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)
