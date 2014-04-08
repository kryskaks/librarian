from flask import Flask
from db import User
app = Flask(__name__)

@app.route('/hello')
def hello_world():
    return 'Hello World!'

@app.route('/hello/<username>')
def hello_user(username):
    return 'Hello, ' + username + '!'

@app.route('/users')
def users():
	users = User.query.all()
	return ', '.join( [ u.email for u in users ] )

if __name__ == '__main__':	
	app.run(debug = True)