from flask import Flask, request, jsonify, make_response
from flask_cors import CORS
import json
import mysql.connector

app = Flask(__name__)
app.config['JSON_AS_ASCII'] = False
CORS(app)
host = "localhost"
user = "root"
password = ""
db = "travel"

@app.route("/api/attractions")
def read():
    mydb = mysql.connector.connect(host=host, user=user, password=password, db=db)
    mycursor = mydb.cursor(dictionary=True)
    mycursor.execute("SELECT * FROM attractions")
    myresult = mycursor.fetchall()
    return make_response(jsonify(myresult), 200)

@app.route("/api/attractions/<id>")
def readbyid(id):
    mydb = mysql.connector.connect(host=host, user=user, password=password, db=db)
    mycursor = mydb.cursor(dictionary=True)
    sql = "SELECT * FROM attractions WHERE id = %s"
    val = (id,)
    mycursor.execute(sql, val)
    myresult = mycursor.fetchall()
    return make_response(jsonify(myresult), 200)

@app.route("/api/attractions", methods = ['POST'])
def create():
    data = request.get_json()
    mydb = mysql.connector.connect(host=host, user=user, password=password, db=db)
    mycursor = mydb.cursor(dictionary=True)
    sql = "INSERT INTO attractions (name, detail) VALUES (%s, %s)"
    val = (data['name'], data['detail'])
    mycursor.execute(sql, val)
    mydb.commit()
    return make_response(jsonify({ "rowcount": mycursor.rowcount }), 200)

@app.route("/api/attractions/<id>", methods = ['PUT'])
def update(id):
    data = request.get_json()
    mydb = mysql.connector.connect(host=host, user=user, password=password, db=db)
    mycursor = mydb.cursor(dictionary=True)
    sql = "UPDATE attractions SET name = %s, detail = %s WHERE id = %s"
    val = (data['name'], data['detail'], id)
    mycursor.execute(sql, val)
    mydb.commit()
    return make_response(jsonify({ "rowcount": mycursor.rowcount }), 200)

@app.route("/api/attractions/<id>", methods = ['DELETE'])
def delete(id):
    mydb = mysql.connector.connect(host=host, user=user, password=password, db=db)
    mycursor = mydb.cursor(dictionary=True)
    sql = "DELETE FROM attractions WHERE id = %s"
    val = (id,)
    mycursor.execute(sql, val)
    mydb.commit()
    return make_response(jsonify({ "rowcount": mycursor.rowcount }), 200)