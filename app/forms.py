# -*- coding: utf-8 -*-
from flask.ext.wtf import Form
from wtforms import TextField, SelectMultipleField, BooleanField
from wtforms.validators import Required, Length

class SearchForm(Form):    
  text = TextField('', [Required(), Length(max=255)])
  by_author = BooleanField(u'По автору', default = True)
  by_title = BooleanField(u'По названию', default = True)

  def set_defaults(self):
  	self.by_author.data = True
  	self.by_title.data = True

  	return self  

class AddEntityForm(Form):
  text = TextField('', [Required(), Length(max=255)])

class UpdateAuthorForm(Form):  
  text = TextField('', [Required(), Length(max=255)])  

class UpdateBookForm(Form):
  text = TextField('', [Required(), Length(max=255)])	
  authors = SelectMultipleField('')

  def validate(self):
  	return self.text.validate({})