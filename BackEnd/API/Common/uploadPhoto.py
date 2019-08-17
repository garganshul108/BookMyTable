import os
from app import app
from flask import Flask,flash,request,redirect,url_for,session,jsonify
from werkzeug.utils import secure_filename
from flask_cors import CORS, cross_origin
from LoginSignUp.util.required import token_required


@app.route('/api/photos', methods=['POST'])
@token_required
def fileUpload(current_user):
    directory=request.args.get('dir',default='%',type=str)
    if directory!="review" and directory!="restaurantProfile" and directory!="userProfile":
        return jsonify("BAD REQUEST"),400

    target=os.path.join(app.config['UPLOAD_FOLDER'],directory)
    if not os.path.isdir(target):
        os.mkdir(target)
    
    if 'file' not in request.files:
        return "NO FILE"
    file = request.files['file'] 
    filename = secure_filename(file.filename)
    destination="/".join([target, filename])
    file.save(destination)
    response=jsonify(filename)
    response.headers.add('Access-Control-Allow-Origin','*')
    return response,201

