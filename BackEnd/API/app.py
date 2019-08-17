from flask import Flask
from flask_cors import CORS
app = Flask(__name__, static_url_path='/static')
cors = CORS(app, resources={r"/api/*": {"origins": "*"}})
UPLOAD_FOLDER = 'static/photos'
app.config['SECRET_KEY']='thisissecret'
app.config['token_expire_time']=60
app.config['UPLOAD_FOLDER']=UPLOAD_FOLDER