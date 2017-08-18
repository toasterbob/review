-- Lesson 1
SELECT title FROM movies;
SELECT director FROM movies;
SELECT title, director FROM movies;
SELECT title, year FROM movies;
SELECT * FROM movies;

-- Lesson 2
SELECT * FROM movies WHERE id = 6;
SELECT * FROM movies WHERE year BETWEEN 2000 AND 2010;
SELECT * FROM movies WHERE year NOT BETWEEN 2000 AND 2010;
SELECT * FROM movies WHERE id BETWEEN 1 AND 5;
-- or
SELECT title, year FROM movies WHERE year <= 2003;

-- Lesson 3
SELECT * FROM movies WHERE title LIKE "%TOY STORY%";
SELECT * FROM movies WHERE director = "John Lasseter";
SELECT * FROM movies WHERE director != "John Lasseter";
SELECT * FROM movies WHERE title LIKE "WALL-_";

-- Lesson 4
SELECT DISTINCT director FROM movies ORDER BY director ASC;
SELECT title FROM movies ORDER BY year DESC LIMIT 4;
SELECT title from Movies ORDER BY title LIMIT 5;
SELECT title from Movies ORDER BY title LIMIT 5 OFFSET 5;

-- Lesson 5
SELECT city, population FROM north_american_cities WHERE latitude > 42;
SELECT * FROM north_american_cities WHERE latitude BETWEEN 28 AND 42 ORDER BY latitude DESC;
SELECT * FROM north_american_cities WHERE longitude < -88 ORDER BY longitude ASC
SELECT * FROM north_american_cities WHERE latitude < 21 ORDER BY population DESC LIMIT 2
SELECT * FROM north_american_cities WHERE latitude BETWEEN 22 AND 42 ORDER BY population DESC LIMIT 2 OFFSET 2

-- Lesson 6
SELECT title, domestic_sales, international_sales FROM movies INNER JOIN boxoffice on movies.id=boxoffice.movie_id;
SELECT title, domestic_sales, international_sales FROM movies INNER JOIN boxoffice on movies.id=boxoffice.movie_id WHERE international_sales > domestic_sales;
SELECT title, rating FROM movies INNER JOIN boxoffice on movies.id=boxoffice.movie_id ORDER BY rating DESC

-- Lesson 7