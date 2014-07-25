from app import db
from sqlalchemy.orm import relationship, backref, mapper

class Book(db.Model):
  __tablename__ = 'books'
  id = db.Column(db.Integer, primary_key=True)
  title = db.Column(db.String(250), unique=True)    
  authorships = relationship("Authorship", backref="book")

  def __init__(self, title):
    self.title = title

  def __repr__(self):
    return '<Book %r>' % (self.title)
    

class Author(db.Model):	
	__tablename__ = 'authors'
	id = db.Column(db.Integer, primary_key=True)
	name = db.Column(db.String(150), unique=True)
	authorships = relationship("Authorship", backref="author")
	
	def __init__(self, name):
		self.name = name

	def __repr__(self):
		return '<Author %r>' % self.name

class Authorship(db.Model):
	__tablename__ = 'books_to_authors'
	id = db.Column(db.Integer, primary_key=True)
	book_id = db.Column(db.Integer, db.ForeignKey('books.id'))
	author_id = db.Column(db.Integer, db.ForeignKey('authors.id'))

	def __repr__(self):
		return '<Authorship: %r of %r>' % (self.book, self.author)