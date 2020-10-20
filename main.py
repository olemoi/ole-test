# Using flask to make an api 
# import necessary libraries and functions 
from flask import Flask, jsonify, request 
import os
import json

  
# creating a Flask app 
app = Flask(__name__)
  
  
@app.route('/', methods = ['GET']) 
def home(): 
  
    return jsonify({'data': "Hello World"}) 
  
  
# driver function 
if __name__ == '__main__': 
  
    app.run(host="0.0.0.0", port=80) 
