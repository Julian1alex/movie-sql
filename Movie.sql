Notes

SELECT id, title, genres
FROM Movielens.movies

SELECT id, title
FROM Movielens.movies
LIMIT 10

SELECT id, title
FROM Movielens.movies
Where id = 485

SELECT id
FROM Movielens.movies
Where title Like "%Made in America%"

SELECT id, title, genres
FROM Movielens.movies
ORDER by title  ASC
LIMIT 10 

SELECT id, title
FROM Movielens.movies
Where title Like "%2002%"

SELECT id, title
FROM Movielens.movies
Where title Like "%Godfather%"
Limit 1

SELECT id, title, genres
FROM Movielens.movies
Where title Like "%Comedy%" "%2000%"

SELECT id, title
FROM movies
WHERE title LIKE "%super%" and title LIKE "%2001%";


SELECT title, rating
From Movielens.movies
LEFT JOIN ratings ON id = movie_id
WHERE title LIKE "%Godfather%";

SELECT title, rating, timestamp
From Movielens.movies
LEFT JOIN ratings ON id = movie_id
WHERE title LIKE "%Godfather%";
ORDER BY timestamp DESC;

--- Modify timestamp to date, integer?

SELECT title, imdb_id 
From Movielens.movies
LEFT JOIN links ON id = movie_id
WHERE title LIKE "%2005%" AND genres LIKE "comedy";

SELECT title, rating
From Movielens.movies
LEFT JOIN ratings ON id = movie_id
WHERE rating LIKE "% %"

SELECT AVG(rating)
FROM Movielens.ratings;
WHERE movie_id = 70;

SELECT SUM(rating)
FROM Movielens.ratings;
WHERE movie_id = 70;

SELECT genres, SUM(title)
FROM Movielens.movies
WHERE genres like "%horror%"
Group by genres;

SELECT AVG(rating)
FROM ratings
WHERE user_id = 670;


