from flask import Flask, jsonify
from flask.json import jsonify

app = Flask(__name__)

@app.route('/', methods = ['GET'])
def index():
    return jsonify({'greetings' : 'congratulations, your api is working!'})

if __name__ == '__main__':
        app.run(debug=True)