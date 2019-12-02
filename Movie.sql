Notes

-- Normal Mode:

1. SELECT id, title, genres
FROM Movielens.movies

2. SELECT id, title
FROM Movielens.movies
LIMIT 10

3. SELECT id, title
FROM Movielens.movies
Where id = 485

4. SELECT id
FROM Movielens.movies
Where title Like "%Made in America%"

5. SELECT id, title, genres
FROM Movielens.movies
ORDER by title  ASC
LIMIT 10 

6. SELECT id, title
FROM Movielens.movies
Where title Like "%2002%"

7. SELECT id, title
FROM Movielens.movies
Where title Like "%Godfather%"
Limit 1

8. SELECT id, title, genres
FROM Movielens.movies
Where title or genres Like "%Comedy%"

9.  SELECT id, title, genres
FROM Movielens.movies
Where title like "%(2000)%" and genres like "Comedy"

10. SELECT id, title, genres
FROM Movielens.movies
Where title like "%death%" and genres like "Comedy"

11. SELECT id, title
FROM Movielens.movies
WHERE title LIKE "%super%" and title LIKE "%2001%"

--  Table 

12.
INSERT into actors (`id`, `name`, `char name`, `dob`, `movieID`)
Values ('3','Anthony Perkins', 'Norman Bates', '04/04/1932', "1219"),
('4','Vera Miles', 'Lila Crane', '08/23/1929', "1219"),
('5','John Gavin', 'Sam Loomis', '04/08/1931', "1219"),
('6','Janet Leigh', 'Marion Crane', '07/06/1927', "1219"),
('7','Jim Carey', 'Ace Ventura', '01/17/1962', "344"),
('8','Courtney Cox', 'Melissa Robinson', '06/15/1964', "344"),
('9','Sean Young', 'Lt. Lois Einhorn', '11/20/1959', "344"),
('10','John Kassir', 'Crypt Keeper', '10/24/1957', "328"),
('11','Billy Zane', 'The Collector', '02/24/1966', "328"),
('12','William Sadler', 'Brayker', '04/13/1950', "328")

UPDATE movies 
SET rating = "TV-PG"
Where id = 1219 

UPDATE movies 
SET rating = "PG-13"
Where id = 344 

UPDATE movies 
SET rating = "R"
Where id = 328 

-- With Joins

SELECT title, rating
From Movielens.movies
LEFT JOIN ratings ON id = movie_id
WHERE title LIKE "%Godfather%";

SELECT title, rating, timestamp
From Movielens.movies
LEFT JOIN ratings ON id = movie_id
WHERE title LIKE "%Godfather%";
ORDER BY timestamp DESC;

SELECT title, imdb_id 
From Movielens.movies
LEFT JOIN links ON id = movie_id
WHERE title LIKE "%2005%" AND genres LIKE "comedy";

SELECT title, rating
From Movielens.movies
LEFT JOIN ratings ON id = movie_id
WHERE rating LIKE "% %"


-- Aggregations

SELECT AVG(rating)
FROM Movielens.ratings;
WHERE movie_id = 344;

SELECT SUM(rating)
FROM Movielens.ratings;
WHERE movie_id = 344;

SELECT genres, SUM(title)
FROM Movielens.movies
WHERE genres like "%horror%"
Group by genres;

SELECT AVG(rating)
FROM Movielens.ratings;
WHERE user_id = 1

SELECT count(rating) a, user_id
FROM Movielens.ratings
GROUP BY user_id 
ORDER BY a DESC
Limit 1

SELECT AVG(rating) a, user_id
FROM Movielens.ratings
GROUP BY user_id 
ORDER BY a DESC
Limit 1

SELECT AVG(rating) a, Count(rating) b, user_id
FROM Movielens.ratings
GROUP BY user_id 
HAVING b > 50
ORDER BY a DESC 
Limit 1

SELECT title, rating
From Movielens.movies
LEFT JOIN ratings ON id = movie_id
WHERE title LIKE "%Godfather%";

SELECT title, AVG(rating) a
From Movielens.movies
LEFT JOIN ratings ON id = movie_id
 