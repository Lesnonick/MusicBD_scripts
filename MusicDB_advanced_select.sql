SELECT genre_name, COUNT(*) c FROM authors a  -- 1. Количество исполнителей в каждом жанре.
LEFT JOIN genreauthor g ON a.id = g.author_id  
LEFT JOIN genres g2 ON g.genre_id = g2.id
GROUP BY genre_name
ORDER BY c DESC;

SELECT COUNT(*) FROM tracks t -- 2. Количество треков, вошедших в альбомы 1966-1968 годов.
LEFT JOIN albums a ON t.album_id = a.id
WHERE release_year BETWEEN 1966 AND 1968;

SELECT title, AVG(duration) A FROM tracks t -- 3. Средняя продолжительность треков по каждому альбому.
LEFT JOIN albums a ON t.album_id = a.id
GROUP BY title
ORDER BY A;

SELECT pseudonym FROM authors -- 4. Все исполнители, которые не выпустили альбомы в 1976 году.
WHERE pseudonym NOT IN 
(SELECT pseudonym FROM authors a 
LEFT JOIN albumauthor aa ON a.id = aa.author_id  
LEFT JOIN albums a2 ON aa.album_id = a2.id 
WHERE release_year = 1976);

SELECT DISTINCT collection_name FROM collections c -- 5. Названия сборников, в которых присутствует Кино.
LEFT JOIN trackcollection tc  ON c.id = tc.collection_id 
LEFT JOIN tracks t ON tc.track_id = t.id
LEFT JOIN albums a ON t.album_id = a.id
LEFT JOIN albumauthor aa ON a.id = aa.album_id  
LEFT JOIN authors a2 ON aa.author_id = a2.id 
WHERE pseudonym = 'Кино';

SELECT title, COUNT(*) c INTO tR_num FROM albums a -- Создание вспомогательной таблицы (ОСОЗНАЮ, ЧТО МОЖНО СДЕЛАТЬ ВЛОЖЕННЫМИ SELECT, НО РЕШИЛ СДЕЛАТЬ КОМПАКТНЕЕ + ПОПРОБОВАТЬ ЧТО-ТО ДРУГОЕ)
LEFT JOIN tracks t ON a.id = t.album_id 
GROUP BY title;
SELECT title from tR_num -- 9. Названия альбомов, содержащих наименьшее количество треков (Но содержит хоть 1)
WHERE c = (SELECT MIN(c) FROM tR_num);

SELECT pseudonym FROM authors a -- 8. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек
LEFT JOIN albumauthor aa ON a.id = aa.author_id  
LEFT JOIN albums a2 ON aa.album_id = a2.id
LEFT JOIN tracks t ON a2.id = t.album_id 
WHERE duration = (SELECT MIN(duration) FROM tracks);


SELECT track_name  FROM tracks t -- 7. Наименования треков, которые не входят в сборники.
LEFT JOIN trackcollection tc  ON t.id = tc.track_id 
LEFT JOIN collections c ON tc.collection_id  = c.id
WHERE collection_name is NULL;

SELECT title FROM albums a -- 6.Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
FULL JOIN albumauthor aa ON a.id = aa.album_id 
FULL JOIN authors a2 ON aa.author_id = a2.id 
FULL JOIN genreauthor ga ON a2.id = ga.author_id 
GROUP BY title
HAVING COUNT(*) > 1;






