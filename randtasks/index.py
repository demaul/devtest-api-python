"""
Testing / Developing / Experimenting
"""
import random
from flask import Flask
from flask_restx import Resource, Api

app = Flask(__name__)
api = Api(app)

@api.route('/hello')
class HelloWorld(Resource):
    """Hello World"""
    def get(self):
        return {'hello': 'world'}


@api.route('/randish')
class Randish(Resource):
    """Return a random int"""
    def get(self):
        return {'Random': random.randint(0,100) }


if __name__ == '__main__':
    app.run(debug=True)
