from app import app
from flaskext.mysql import MySQL

mysql = MySQL()

# MySQL configurations
app.config['MYSQL_DATABASE_USER'] = 'tsumit23'
app.config['MYSQL_DATABASE_PASSWORD'] = 'to23898it'
app.config['MYSQL_DATABASE_DB'] = 'BookMyTable'
app.config['MYSQL_DATABASE_HOST'] = 'bookmytable1.cpd6yq0bvtmu.us-east-2.rds.amazonaws.com'
mysql.init_app(app)
