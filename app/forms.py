from flask.ext.wtf import Form
from wtforms import TextField
from wtforms.validators import Required

class SearchForm(Form):
  text = TextField('to search...', [Required()])