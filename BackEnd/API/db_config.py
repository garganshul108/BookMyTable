from app import app
from flaskext.mysql import MySQL

mysql = MySQL()

# MySQL configurations
app.config['MYSQL_DATABASE_USER'] = '62s8VsuVYg'
app.config['MYSQL_DATABASE_PASSWORD'] = 'dgu4silKdU'
app.config['MYSQL_DATABASE_DB'] = '62s8VsuVYg'
app.config['MYSQL_DATABASE_HOST'] = 'remotemysql.com'
mysql.init_app(app)
