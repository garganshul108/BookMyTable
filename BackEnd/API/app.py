from flask import Flask
app = Flask(__name__)

app.config['SECRET_KEY']='thisissecret'
app.config['JSON_SORT_KEYS']=False