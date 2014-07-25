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
----------------------------------------------------------------------------------------------------
insert into books(title) values('Уловка-22');

INSERT INTO authors(name) 
SELECT 'Джозеф Хеллер' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Джозеф Хеллер');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Уловка-22'),
	(select id from authors where name = 'Джозеф Хеллер'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Грозовой перевал');

INSERT INTO authors(name) 
SELECT 'Эмили Бронте' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Эмили Бронте');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Грозовой перевал'),
	(select id from authors where name = 'Эмили Бронте'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Пение птиц');

INSERT INTO authors(name) 
SELECT 'Себастьян Фолкс' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Себастьян Фолкс');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Пение птиц'),
	(select id from authors where name = 'Себастьян Фолкс'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Ребекка');

INSERT INTO authors(name) 
SELECT 'Дафна Дюморье' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Дафна Дюморье');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Ребекка'),
	(select id from authors where name = 'Дафна Дюморье'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Над пропастью во ржи');

INSERT INTO authors(name) 
SELECT 'Джером Сэлинджер' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Джером Сэлинджер');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Над пропастью во ржи'),
	(select id from authors where name = 'Джером Сэлинджер'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Ветер в ивах');

INSERT INTO authors(name) 
SELECT 'Кеннет Грэм' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Кеннет Грэм');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Ветер в ивах'),
	(select id from authors where name = 'Кеннет Грэм'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Большие надежды');

INSERT INTO authors(name) 
SELECT 'Чарльз Диккенс' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Чарльз Диккенс');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Большие надежды'),
	(select id from authors where name = 'Чарльз Диккенс'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Маленькие женщины');

INSERT INTO authors(name) 
SELECT 'Луиза Мэй Олкотт' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Луиза Мэй Олкотт');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Маленькие женщины'),
	(select id from authors where name = 'Луиза Мэй Олкотт'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Мандолина капитана Корелли');

INSERT INTO authors(name) 
SELECT 'Луи де Берньер' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Луи де Берньер');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Мандолина капитана Корелли'),
	(select id from authors where name = 'Луи де Берньер'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Война и мир');

INSERT INTO authors(name) 
SELECT 'Лев Толстой' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Лев Толстой');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Война и мир'),
	(select id from authors where name = 'Лев Толстой'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Унесённые ветром');

INSERT INTO authors(name) 
SELECT 'Маргарет Митчелл' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Маргарет Митчелл');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Унесённые ветром'),
	(select id from authors where name = 'Маргарет Митчелл'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Гарри Поттер и философский камень');

INSERT INTO authors(name) 
SELECT 'Джоан Роулинг' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Джоан Роулинг');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Гарри Поттер и философский камень'),
	(select id from authors where name = 'Джоан Роулинг'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Гарри Поттер и Тайная комната');

INSERT INTO authors(name) 
SELECT 'Джоан Роулинг' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Джоан Роулинг');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Гарри Поттер и Тайная комната'),
	(select id from authors where name = 'Джоан Роулинг'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Гарри Поттер и узник Азкабана');

INSERT INTO authors(name) 
SELECT 'Джоан Роулинг' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Джоан Роулинг');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Гарри Поттер и узник Азкабана'),
	(select id from authors where name = 'Джоан Роулинг'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Хоббит');

INSERT INTO authors(name) 
SELECT 'Джон Р. Р. Толкин' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Джон Р. Р. Толкин');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Хоббит'),
	(select id from authors where name = 'Джон Р. Р. Толкин'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Тэсс из рода д’Эрбервиллей');

INSERT INTO authors(name) 
SELECT 'Томас Харди' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Томас Харди');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Тэсс из рода д’Эрбервиллей'),
	(select id from authors where name = 'Томас Харди'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Миддлмарч');

INSERT INTO authors(name) 
SELECT 'Джордж Элиот' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Джордж Элиот');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Миддлмарч'),
	(select id from authors where name = 'Джордж Элиот'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Молитва об Оуэне Мини');

INSERT INTO authors(name) 
SELECT 'Джон Ирвинг' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Джон Ирвинг');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Молитва об Оуэне Мини'),
	(select id from authors where name = 'Джон Ирвинг'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Гроздья гнева');

INSERT INTO authors(name) 
SELECT 'Джон Стейнбек' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Джон Стейнбек');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Гроздья гнева'),
	(select id from authors where name = 'Джон Стейнбек'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Алиса в Стране чудес');

INSERT INTO authors(name) 
SELECT 'Льюис Кэрролл' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Льюис Кэрролл');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Алиса в Стране чудес'),
	(select id from authors where name = 'Льюис Кэрролл'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Дневник Трейси Бикер');

INSERT INTO authors(name) 
SELECT 'Жаклин Уилсон' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Жаклин Уилсон');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Дневник Трейси Бикер'),
	(select id from authors where name = 'Жаклин Уилсон'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Сто лет одиночества');

INSERT INTO authors(name) 
SELECT 'Габриэль Гарсиа Маркес' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Габриэль Гарсиа Маркес');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Сто лет одиночества'),
	(select id from authors where name = 'Габриэль Гарсиа Маркес'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Столпы Земли');

INSERT INTO authors(name) 
SELECT 'Кен Фоллетт' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Кен Фоллетт');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Столпы Земли'),
	(select id from authors where name = 'Кен Фоллетт'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Дэвид Копперфильд');

INSERT INTO authors(name) 
SELECT 'Чарльз Диккенс' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Чарльз Диккенс');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Дэвид Копперфильд'),
	(select id from authors where name = 'Чарльз Диккенс'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Чарли и шоколадная фабрика');

INSERT INTO authors(name) 
SELECT 'Роальд Даль' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Роальд Даль');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Чарли и шоколадная фабрика'),
	(select id from authors where name = 'Роальд Даль'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Остров сокровищ');

INSERT INTO authors(name) 
SELECT 'Роберт Стивенсон' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Роберт Стивенсон');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Остров сокровищ'),
	(select id from authors where name = 'Роберт Стивенсон'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Город как Элис');

INSERT INTO authors(name) 
SELECT 'Невил Шют' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Невил Шют');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Город как Элис'),
	(select id from authors where name = 'Невил Шют'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Доводы рассудка');

INSERT INTO authors(name) 
SELECT 'Джейн Остин' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Джейн Остин');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Доводы рассудка'),
	(select id from authors where name = 'Джейн Остин'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Дюна');

INSERT INTO authors(name) 
SELECT 'Фрэнк Герберт' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Фрэнк Герберт');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Дюна'),
	(select id from authors where name = 'Фрэнк Герберт'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Эмма');

INSERT INTO authors(name) 
SELECT 'Джейн Остин' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Джейн Остин');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Эмма'),
	(select id from authors where name = 'Джейн Остин'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Аня из Зеленых Мезонинов');

INSERT INTO authors(name) 
SELECT 'Люси Мод Монтгомери' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Люси Мод Монтгомери');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Аня из Зеленых Мезонинов'),
	(select id from authors where name = 'Люси Мод Монтгомери'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Обитатели холмов');

INSERT INTO authors(name) 
SELECT 'Ричард Адамс' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Ричард Адамс');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Обитатели холмов'),
	(select id from authors where name = 'Ричард Адамс'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Великий Гэтсби');

INSERT INTO authors(name) 
SELECT 'Фрэнсис Скотт Фицджеральд' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Фрэнсис Скотт Фицджеральд');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Великий Гэтсби'),
	(select id from authors where name = 'Фрэнсис Скотт Фицджеральд'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Граф Монте-Кристо');

INSERT INTO authors(name) 
SELECT 'Александр Дюма' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Александр Дюма');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Граф Монте-Кристо'),
	(select id from authors where name = 'Александр Дюма'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Возвращение в Брайдсхед');

INSERT INTO authors(name) 
SELECT 'Ивлин Во' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Ивлин Во');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Возвращение в Брайдсхед'),
	(select id from authors where name = 'Ивлин Во'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Скотный двор');

INSERT INTO authors(name) 
SELECT 'Джордж Оруэлл' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Джордж Оруэлл');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Скотный двор'),
	(select id from authors where name = 'Джордж Оруэлл'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Рождественская песнь');

INSERT INTO authors(name) 
SELECT 'Чарльз Диккенс' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Чарльз Диккенс');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Рождественская песнь'),
	(select id from authors where name = 'Чарльз Диккенс'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Вдали от обезумевшей толпы');

INSERT INTO authors(name) 
SELECT 'Томас Харди' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Томас Харди');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Вдали от обезумевшей толпы'),
	(select id from authors where name = 'Томас Харди'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Спокойной ночи, мистер Том');

INSERT INTO authors(name) 
SELECT 'Мишель Магориан' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Мишель Магориан');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Спокойной ночи, мистер Том'),
	(select id from authors where name = 'Мишель Магориан'));
----------------------------------------------------------------------------------------------------
insert into books(title) values('Семейная реликвия');

INSERT INTO authors(name) 
SELECT 'Розамунд Пилчер' 
WHERE NOT EXISTS(SELECT 1 FROM authors WHERE name = 'Розамунд Пилчер');

insert into books_to_authors(book_id, author_id) values(
	(select id from books where title = 'Семейная реликвия'),
	(select id from authors where name = 'Розамунд Пилчер'));
----------------------------------------------------------------------------------------------------
