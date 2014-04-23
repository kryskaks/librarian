from flask.ext.wtf import Form
from wtforms import TextField, IntegerField
from wtforms.validators import Required

class SearchForm(Form):
  text = TextField('', [Required()])

class AddEntityForm(Form):
  text = TextField('', [Required()])

class UpdateEntityForm(Form):  
  text = TextField('')
  new = TextField('')

class AddAuthorshipForm(Form):  
  book_id = IntegerField('', [Required()])
  author_name = TextField('', [Required()])