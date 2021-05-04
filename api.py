from flask import Flask, render_template, redirect, url_for, request, jsonify

import socket, json

app = Flask(__name__)

@app.route('/')
def index():
    return "Bravo Vllai"


@app.route('/fetcher', methods=["POST"])
def fetcher():
    if request.method == "POST":

        # Get request.body and parse it.

        # Check if the token in the body exists.

        #   if/else

        # If it exists in the db then return expiration date.

        # Else create one.

        print("Just wait for the body parses.")
