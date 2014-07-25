# -*- coding: utf-8 -*-
import os
import sqlite3

from flask import *
from app import app
from config import DATABASE_PATH

from app.models import *

os.environ['PYTHONINSPECT'] = 'True'

def connect_db():    
    rv = sqlite3.connect(DATABASE_PATH)
    rv.row_factory = sqlite3.Row
    return rv

def init_db():	
    execute_script('sql/schema.sql')    

def fill_data():
    execute_script('sql/data.min.sql')
    
def execute_script(file_name):
    with app.app_context():
        db = connect_db()
        with open(file_name, mode='r') as f:
            db.cursor().executescript(f.read())
        db.commit()
        db.close()    