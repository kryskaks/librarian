insert into books(title) values('Властелин колец');

INSERT INTO authors(name) 
SELECT 'Джон Р. Р. Толкин' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Джон Р. Р. Толкин');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Властелин колец'),
	(select id from authors where name = 'Джон Р. Р. Толкин'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Гордость и предубеждение');

INSERT INTO authors(name) 
SELECT 'Джейн Остин' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Джейн Остин');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Гордость и предубеждение'),
	(select id from authors where name = 'Джейн Остин'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Тёмные начала');

INSERT INTO authors(name) 
SELECT 'Филип Пулман' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Филип Пулман');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Тёмные начала'),
	(select id from authors where name = 'Филип Пулман'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Автостопом по галактике');

INSERT INTO authors(name) 
SELECT 'Дуглас Адамс' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Дуглас Адамс');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Автостопом по галактике'),
	(select id from authors where name = 'Дуглас Адамс'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Гарри Поттер и Кубок огня');

INSERT INTO authors(name) 
SELECT 'Джоан Роулинг' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Джоан Роулинг');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Гарри Поттер и Кубок огня'),
	(select id from authors where name = 'Джоан Роулинг'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Убить пересмешника');

INSERT INTO authors(name) 
SELECT 'Харпер Ли' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Харпер Ли');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Убить пересмешника'),
	(select id from authors where name = 'Харпер Ли'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Винни-Пух и все-все-все');

INSERT INTO authors(name) 
SELECT 'Алан Милн' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Алан Милн');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Винни-Пух и все-все-все'),
	(select id from authors where name = 'Алан Милн'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('1984');

INSERT INTO authors(name) 
SELECT 'Джордж Оруэлл' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Джордж Оруэлл');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = '1984'),
	(select id from authors where name = 'Джордж Оруэлл'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Лев, колдунья и платяной шкаф');

INSERT INTO authors(name) 
SELECT 'Клайв Стэйплз Льюис' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Клайв Стэйплз Льюис');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Лев, колдунья и платяной шкаф'),
	(select id from authors where name = 'Клайв Стэйплз Льюис'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Джейн Эйр');

INSERT INTO authors(name) 
SELECT 'Шарлотта Бронте' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Шарлотта Бронте');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Джейн Эйр'),
	(select id from authors where name = 'Шарлотта Бронте'));
