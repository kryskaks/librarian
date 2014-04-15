from flask import request, render_template, flash, g, session, redirect, url_for
from app import db, app
from app.models import Book
from app.forms import SearchForm


@app.route('/hello')
def home():
    return render_template('hello.html', hello_text = 'Hello World!')

@app.route('/')
def index():
    return render_template('index.html', form = SearchForm())

@app.route('/books')
def books_list():
	books = Book.query.all()
	return render_template('books.html', books = books)

@app.route('/search', methods = ["POST"])
def search():	
	form = SearchForm(request.form)		
	books = Book.query.filter_by(title = form.text.data)
	return render_template('search_result.html', books = books)

@app.route('/add/book')
def add_book(title):
	b = Book(title = title)
	db.session.add(b)
	db.session.commit()

	return url_for('books_list')