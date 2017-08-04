#!/usr/bin/env python

import textwrap
from  flask import Flask
from flask_restful import Api, Resource, abort, reqparse
from mysql.connector.pooling import MySQLConnectionPool

if __name__ == "__main__":
    app = Flask("MySQL via REST API")
    api = Api(app)
    connection_pool = MySQLConnectionPool(host="192.168.0.42",
        port=3306,
        user="testuser",
        password="testuser",
        database="GestionTableConv")
