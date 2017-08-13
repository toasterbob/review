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
