import random

from flask import request, render_template, redirect, url_for
from app import app
from app.models import Book, Author, Authorship, db
from app.forms import SearchForm, AddEntityForm, UpdateAuthorForm, UpdateBookForm

@app.route('/books')
def books_list():				
	return render_template('books.html', books = Book.query.all(), add_form = AddEntityForm())

@app.route('/books/create', methods = ["POST"])
def create_book():
	form = AddEntityForm(request.form)
	if not form.validate():
		return render_template('books.html', books = Book.query.all(), add_form = form)

	book = create(Book, form.text.data)
	return redirect(url_for('edit_book', id = book.id))

@app.route('/books/<int:id>')
def get_book(id):		
	return render_template('book.html', book = Book.query.get(id))

@app.route('/books/<int:id>/edit')
def edit_book(id):	
	book = Book.query.get(id)	
	book_author_ids = [ath.author.id for ath in book.authorships]
	update_book_form = UpdateBookForm()	
	update_book_form.authors.choices = [(a.id, a.name) for a in Author.query.all() if a.id not in book_author_ids]

	return render_template('edit_book.html', book = book, update_book_form = update_book_form)

@app.route('/authors')
def authors_list():	
	return render_template('authors.html', authors = Author.query.all(), add_form = AddEntityForm())

@app.route('/authors/create', methods = ["POST"])
def create_author():	
	form = AddEntityForm(request.form)
	
	if not form.validate():
		return render_template('authors.html', authors = Author.query.all(), add_form = form)
	
	create(Author, form.text.data)
	return redirect(url_for('authors_list'))

@app.route('/authors/<int:id>')
def get_author(id):		
	return render_template('author.html', author = Author.query.get(id))

@app.route('/authors/<int:id>/edit')
def edit_author(id):		
	return render_template('edit_author.html', author = Author.query.get(id), update_form = UpdateAuthorForm())

@app.route('/authors/<int:id>/update', methods = ["POST"])
def update_author(id):	
	form = UpdateAuthorForm(request.form)
	author = Author.query.get(id)
	if not form.validate():
		return render_template('edit_author.html', author = author, update_form = form)
	
	author.name = form.text.data
	db.session.merge(author)
	db.session.commit()
	return redirect(url_for('get_author', id = id))

def create(class_name, value):	
	o = class_name(value)
	db.session.add(o)
	db.session.commit()
	return o

@app.route('/authorship/delete/<int:id>')
def delete_authorship(id):
	authorship = Authorship.query.get(id)	
	book_id = authorship.book.id
	db.session.delete(authorship)
	db.session.commit()
	return redirect(url_for('edit_book', id = book_id))

@app.route('/books/delete/<int:id>')
def delete_book(id):
	book = Book.query.get(id)
	for authorship in book.authorships:
		db.session.delete(authorship)		
	db.session.delete(book)	
	db.session.commit()
	return redirect(url_for('books_list'))

@app.route('/')
def index():	
	db_books = Book.query.all()	
	books = set([db_books[i] for i in [random.randint(0, len(db_books) - 1) for j in xrange(5)]])
	return render_template('index.html', books = books, search_form = SearchForm())

@app.route('/search', methods = ["POST"])
def search():		
	search_form = SearchForm(request.form)
	if not search_form.validate():
		return render_template('search_result.html', books = [], search_form = search_form)

	search_phrase = "%%%s%%" % search_form.text.data

	books_by_title = Book.query.filter(Book.title.ilike(search_phrase)).all() if search_form.by_title.data else []
	authors_by_name = Author.query.filter(Author.name.ilike(search_phrase)).all() if search_form.by_author.data else []

	books = set(books_by_title + [authorship.book for author in authors_by_name for authorship in author.authorships])
	
	form = SearchForm().set_defaults()
	
	return render_template('search_result.html', books = books, search_form = form)


@app.route('/books/<int:id>/save', methods = ["POST"])
def save_book(id):	
	book = Book.query.get(id)
	form =  UpdateBookForm(request.form)	
	if not form.validate():
		book_author_ids = [ath.author.id for ath in book.authorships]
		form.authors.choices = [(a.name, a.name) for a in Author.query.all() if a.id not in book_author_ids]
		return render_template('edit_book.html', book = book, update_book_form = form)

	book.title = form.text.data
	
	authors = [Author.query.get(author_id) for author_id in form.authors.data]
	
	for author in authors:
		authorship = Authorship(book_id = id, author_id = author.id)
		db.session.add(authorship)
	
	db.session.merge(book)
	db.session.commit()

	return redirect(url_for('get_book', id = id))


@app.route('/authors/delete/<int:id>')
def delete_author(id):
	author = Author.query.get(id)
	for authorship in author.authorships:
		db.session.delete(authorship)		
	db.session.delete(author)
	
	db.session.commit()
	return redirect(url_for('authors_list'))