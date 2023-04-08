INSERT INTO genres
VALUES 
	(1, 'Блюз'),
	(2, 'Джаз'),
	(3, 'Рок'),
	(4, 'Диско'),
	(5, 'Поп-музыка');

INSERT INTO authors
VALUES
	(1, 'Луи Армстронг'),
	(2, 'Фрэнк Синатра'),
	(3, 'Би Би Кинг'),
	(4, 'Ария'),
	(5, 'Кино'),
	(6, 'Queen'),
	(7, 'ABBA'),
	(8, 'Руки вверх!');

INSERT INTO genreauthor 
VALUES
	(1, 3),
	(2, 3),
	(2, 1),
	(2, 2),
	(3, 4),
	(3, 5),
	(3, 6),
	(4, 7),
	(5, 8);

INSERT INTO albums
VALUES
	(1, 'Hello, Dolly!', 1964),
	(2, 'What a Wonderfull World', 1968),
	(3, 'The World We Knew', 1967),
	(4, 'Deuces Wild', 1966),
	(5, 'Мания величия', 1985),
	(6, 'Последний герой', 1989),
	(7, 'A Night at the Opera', 1975),
	(8, 'Arrival', 1976),
	(9, 'Voulez-Vous', 1979),
	(10, 'Сделай Погромче!', 1998),
    (11, 'The big stars', 1968);;

INSERT INTO albumauthor
VALUES
	(1, 1),
	(2, 1),
	(3, 2),
	(4, 3),
	(5, 4),
	(6, 5),
	(7, 6),
	(8, 7),
	(9, 7),
	(10, 8),
	(11, 1),
	(11, 3);
	
INSERT INTO tracks 
VALUES
	(1, 1, 'Hello, Dolly!', 175),
	(2, 1, 'People', 228),
	(3, 2, 'What a Wonderfull World', 139),
	(4, 3, 'Born Free', 122),
	(5, 4, 'If You Love Me (with Van Morrison)', 348),
	(6, 5, 'Это рок', 354),
	(7, 6, 'Мы ждём перемен', 295),
	(8, 6, 'Электричка', 289),
	(9, 6, 'Троллейбус', 176),
	(10, 6, 'Группа крови', 240),
	(11, 7, 'Bohemian Rhapsody', 355),
	(12, 7, 'Love of My Life', 219),
	(13, 8, 'When I Kissed the Teacher', 180),
	(14, 9, 'Angeleyes', 240),
	(15, 10, 'Крошка моя', 250),
	(16, 10, 'Intro', 74);;

INSERT INTO collections
VALUES
	(1, 'Музыка 60-х'),
	(2, 'Музыка 70-х'),
	(3, 'Музыка 80-х'),
	(4, 'Музыка 90-х'),
	(5, 'Российская музыка'),
	(6, 'Иностранная музыка'),
	(7, 'Великая классика'),
	(8, 'Танцевальная музыка');

INSERT INTO trackcollection 
VALUES
	(1, 1),
	(1, 6),
	(1, 7),
	(2, 1),
	(2, 6),
	(3, 1),
	(3, 6),
	(3, 7),
	(4, 1),
	(4, 6),
	(5, 1),
	(5, 6),
	(6, 3),
	(6, 5),
	(7, 3),
	(7, 5),
	(8, 3),
	(8, 5),
	(9, 3),
	(9, 5),
	(10, 3),
	(10, 5),
	(10, 7),
	(11, 2),
	(11, 6),
	(11, 7),
	(12, 2),
	(12, 6),
	(12, 7),
	(13, 2),
	(13, 6),
	(13, 8),
	(14, 2), 
	(14, 6),
	(14, 8),
	(15, 3),
	(15, 5),
	(15, 8);

