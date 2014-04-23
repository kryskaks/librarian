from flask import request, render_template, flash, g, session, redirect, url_for
from app import db, app
from app.models import Book, Author
from app.forms import SearchForm, AddEntityForm, UpdateEntityForm, AddAuthorshipForm
from database import Base

@app.route('/books')
def books_list():	
	books = get_list(Book, "title")
	return render_template('books.html', books = books, search_form = SearchForm(), add_form = AddEntityForm())

@app.route('/books/create', methods = ["POST"])
def create_book():
	create(Book)
	return redirect(url_for('books_list'))

@app.route('/books/<int:id>')
def get_book(id):	
	book = Book.query.get(id)
	return render_template('book.html', book = book, update_form = UpdateEntityForm())

@app.route('/authors')
def authors_list():
	authors = get_list(Author, "name")
	return render_template('authors.html', authors = authors, search_form = SearchForm(), add_form = AddEntityForm())

@app.route('/authors/create', methods = ["POST"])
def create_author():
	create(Author)
	return redirect(url_for('authors_list'))

@app.route('/authors/<int:id>')
def get_author(id):	
	author = Author.query.get(id)
	return render_template('author.html', author = author, update_form = UpdateEntityForm())

@app.route('/authors/<int:id>/update', methods = ["POST"])
def update_author(id):	
	author = Author.query.get(id)
	author.name = UpdateEntityForm(request.form).text.data
	db.session.merge(author)
	db.session.commit()
	return redirect(url_for('authors_list'))

@app.route('/books/<int:id>/update', methods = ["POST"])
def update_book(id):	
	book = Book.query.get(id)
	form =  UpdateEntityForm(request.form)
	
	if form.new:
		author = Author.query.filter(Author.name == form.new.data).first()
		if not author:
			author = create(Author, form.new.data)
	
		book.authors.append(author)
	book.title = form.text.data
	db.session.merge(book)
	db.session.commit()
	return redirect(url_for('books_list'))


def get_list(classObj, search_param_name):
	if "text" in request.args:		
		objects = classObj.query.filter(getattr(classObj, search_param_name).like("%{0}%".format(request.args["text"])))					
	else:
		objects = classObj.query.all()

	return objects	

def create(classObj, value = None):
	if not value:
		form = AddEntityForm(request.form)
		o = classObj(form.text.data)
	else:
		o = classObj(value)
	db.session.add(o)
	db.session.commit()

@app.route('/authorship/create', methods = ["POST"])
def create_authorship():
	form = CreateAuthorshipForm(request.form)
	book_id = form.book_id.data
	author = Author.query.filter(Author.name == form.author_name.data).first()
	if not author:
		author = create(Author, form.author_name.data)

	authorship = Authorship(book_id = book_id, author_id = author.id)

	db.session.add(authorship)
	db.session.commit()
	return redirect(url_for('books', id = book_id))