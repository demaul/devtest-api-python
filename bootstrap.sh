#!/bin/bash
export FLASK_APP=./randtasks/index.py
. $(pipenv --venv)/bin/activate
flask run -h 0.0.0.0
