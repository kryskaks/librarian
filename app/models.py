from app import db

class Book(db.Model):
  __tablename__ = 'books'
  id = db.Column(db.Integer, primary_key=True)
  title = db.Column(db.String(250), unique=True)

  def __init__(self, title):
    self.title = title

  def __repr__(self):
    return '<Book %r>' % (self.title)
    

class Author(db.Model):
	__tablename__ = 'authors'
	id = db.Column(db.Integer, primary_key=True)
	name = db.Column(db.String(150), unique=True)

	def __init__(self, name):
		self.name = name

	def __repr__(self):
		return '<Author %r>' % self.name


class BooksToAuthors(db.Model):
	__tablename__ = 'books_to_authors'
	id = db.Column(db.Integer, primary_key=True)
	# TODO objects not id
	book_id = db.Column(db.Integer, db.ForeignKey('books.id')) 
	author_id = db.Column(db.Integer, db.ForeignKey('authors.id'))

	def __init__(self, book_id, author_id):
		self.book_id = book_id
		self.author_id = author_id

	def __repr__(self):
		return '<Book "%r" of Author %r>' % (self.book_id, self.author_id)