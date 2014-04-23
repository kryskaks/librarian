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
    with app.app_context():
        db = connect_db()
        with app.open_resource('schema.sql', mode='r') as f:
            db.cursor().executescript(f.read())
        db.commit()
        db.close()