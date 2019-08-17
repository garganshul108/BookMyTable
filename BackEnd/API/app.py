from flask import Flask
from flask_cors import CORS
app = Flask(__name__, static_url_path='/static')
cors = CORS(app, resources={r"/api/*": {"origins": "*"}})

app.config['SECRET_KEY']='thisissecret'
app.config['token_expire_time']=160


