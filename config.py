import os

_basedir = os.path.abspath(os.path.dirname(__file__))

DEBUG = True

DEBUG_TB_INTERCEPT_REDIRECTS = False

ADMINS = frozenset(['kryskaks@gmail.com'])

SECRET_KEY = 'top secret'

SQLALCHEMY_DATABASE_URI = 'sqlite:///' + os.path.join(_basedir, 'app.db')
DATABASE_PATH = os.path.join(_basedir, 'app.db')

DATABASE_CONNECT_OPTIONS = {}

THREADS_PER_PAGE = 8

CSRF_ENABLED = True

CSRF_SESSION_KEY = ""