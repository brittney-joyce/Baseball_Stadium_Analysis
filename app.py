#Import Dependencies

import datetime as dt
import numpy as np
import pandas as pd
import json

#Read JSON

baseball = "Raw Data/Baseball_Analysis_output.json"

#Baseball analysis data

with open (baseball) as data_file:
    baseball_data = json.load(data_file)


from flask import (
    Flask,
    render_template,
    jsonify,
    request,
    redirect)

#################################################
# Flask Setup
#################################################
app = Flask(__name__)

#################################################
# Flask Routes
#################################################

@app.route("/")
def home():
    """Return the dashboard homepage."""
    return render_template("index.html")

@app.route("/graph")
def graph():
    """Return the dashboard homepage."""
    return render_template("sample.html")

@app.route("/ticket_pricing")
def tickets():
    """Return the dashboard homepage."""
    return render_template("tickets.html")

@app.route("/attendance")
def attendance():
    """Return the dashboard homepage."""
    return render_template("attendance.html")

@app.route("/linear_regression")
def regression():
    """Return the dashboard homepage."""
    return render_template("regression.html")

@app.route("/random_forest")
def random_forest():
    """Return the dashboard homepage."""
    return render_template("forest.html")

@app.route("/baseball_data")
def data():
    return jsonify(baseball_data)

if __name__ == '__main__':
    app.run(debug=True)