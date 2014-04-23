from app import db
from sqlalchemy.orm import relationship, backref, mapper
from database import Base

association_table = db.Table('books_to_authors', Base.metadata,
	db.Column('book_id', db.Integer, db.ForeignKey('books.id')),
	db.Column('author_id', db.Integer, db.ForeignKey('authors.id'))
)

class Book(Base):
  __tablename__ = 'books'
  id = db.Column(db.Integer, primary_key=True)
  title = db.Column(db.String(250), unique=True)  
  authors = relationship("Author", secondary=association_table, backref="books")
  authorships = relationship("Authorship", backref="book")

  def __init__(self, title):
    self.title = title

  def __repr__(self):
    return '<Book %r>' % (self.title)
    

class Author(Base):	
	__tablename__ = 'authors'
	id = db.Column(db.Integer, primary_key=True)
	name = db.Column(db.String(150), unique=True)
	authorships = relationship("Authorship", backref="author")
	
	def __init__(self, name):
		self.name = name

	def __repr__(self):
		return '<Author %r>' % self.name

class Authorship(Base):
	__tablename__ = 'books_to_authors'
	__table_args__ = {'extend_existing': True}
	id = db.Column(db.Integer, primary_key=True)
	book_id = db.Column(db.Integer, db.ForeignKey('books.id'))
	author_id = db.Column(db.Integer, db.ForeignKey('authors.id'))

	def __repr__(self):
		return '<Authorship: %r of %r>' % (self.book, self.author)