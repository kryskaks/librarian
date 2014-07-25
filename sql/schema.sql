drop table if exists books;
drop table if exists authors;
drop table if exists books_to_authors;

create table books (
  id integer primary key autoincrement,
  title text not null  
);

create table authors (
  id integer primary key autoincrement,
  name text not null
);

create table books_to_authors (
  id integer primary key autoincrement,
  book_id integer not null,
  author_id integer not null,
  FOREIGN KEY(book_id) REFERENCES books(id)
  FOREIGN KEY(author_id) REFERENCES authors(id)
);