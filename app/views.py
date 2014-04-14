from flask import request, render_template, flash, g, session, redirect, url_for

from app import db, app

from app.models import Book

@app.route('/hello')
def home():
    return render_template('hello.html', hello_text = 'Hello World!')

@app.route('/')
def books_list():
	books = Book.query.all()
	if books:
		return ','.join([str(b) for b in books])
	return 'List is empty'

@app.route('/add/book')
def add_book(title):
	b = Book(title = title)
	db.session.add(b)
	db.session.commit()

	return url_for('books_list')