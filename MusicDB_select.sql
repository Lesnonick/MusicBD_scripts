SELECT title, release_year FROM albums
WHERE release_year = 1968

SELECT track_name, duration FROM tracks 
ORDER BY duration DESC
LIMIT 1;

SELECT track_name FROM tracks
WHERE duration >= 210;

SELECT title FROM albums 
WHERE release_year BETWEEN 1964 AND 1968;

SELECT pseudonym FROM authors
WHERE pseudonym NOT LIKE '% %';

SELECT track_name FROM tracks 
WHERE track_name LIKE '%моя%' 
   OR track_name LIKE '%мой%'
   OR track_name LIKE '%My%'
   OR track_name LIKE '%my%';
