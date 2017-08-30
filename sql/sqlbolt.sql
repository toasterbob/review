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
 SELECT DISTINCT building_name FROM employees LEFT JOIN buildings ON employees.building=buildings.building_name;
 SELECT * from buildings
 SELECT DISTINCT building_name, role FROM buildings LEFT JOIN employees ON building_name = building;

 -- Lesson 8
 SELECT name, role FROM employees LEFT JOIN buildings on employees.building=buildings.building_name WHERE building_name IS NULL;
 SELECT building_name from buildings LEFT JOIN employees ON buildings.building_name = building WHERE building IS NULL

 -- Lesson 9
SELECT title, (domestic_sales + international_sales)/1000000 AS millions  FROM movies JOIN boxoffice ON movies.id=boxoffice.movie_id;
SELECT title, rating * 10 AS percent  FROM movies JOIN boxoffice ON movies.id=boxoffice.movie_id;
SELECT title  FROM movies WHERE year % 2 = 0

-- Lesson 10
SELECT MAX(years_employed) FROM employees;
SELECT role, AVG(years_employed) FROM employees GROUP BY role;
SELECT building, SUM(years_employed) FROM employees GROUP BY building;

-- Lesson 11
SELECT COUNT(*) FROM employees WHERE role="Artist";
SELECT role, COUNT(*) FROM employees GROUP BY role;
SELECT role, SUM(years_employed) FROM employees WHERE role="Engineer";

SELECT role, SUM(years_employed) FROM employees GROUP BY role HAVING role="Engineer";

-- Lesson 12
-- Complete SELECT query
SELECT DISTINCT column, AGG_FUNC(column_or_expression), …
FROM mytable
    JOIN another_table
      ON mytable.column = another_table.column
    WHERE constraint_expression
    GROUP BY column
    HAVING constraint_expression
    ORDER BY column ASC/DESC
    LIMIT count OFFSET COUNT;

SELECT DISTINCT director, COUNT(*) FROM movies GROUP BY director;
SELECT DISTINCT director, SUM(domestic_sales + international_sales) FROM movies JOIN boxoffice on id=movie_id GROUP BY director;

SELECT director, COUNT(*) FROM movies GROUP BY director;
SELECT director, SUM(domestic_sales + international_sales) FROM movies JOIN boxoffice ON id=movie_id GROUP BY director;
-- Lesson 13
INSERT INTO movies
(title, director, year)
VALUES
("Toy Story 4", "John Lasseter", 2018)

INSERT INTO movies VALUES (4, "Toy Story 4", "El Directore", 2015, 90);

INSERT INTO boxoffice
(movie_id, rating, domestic_sales, international_sales)
VALUES
(19, 8.7, 340000000, 270000000)
INSERT INTO boxoffice VALUES (4, 8.7, 340000000, 270000000);

-- Lesson 14
UPDATE movies
SET director = "John Lasseter"
WHERE id = 2;

UPDATE movies
SET year = 1999
WHERE id = 3

UPDATE movies
SET title="Toy Story 3", director="Lee Unkrich"
WHERE id=11

-- Lesson 15
-- DELETE FROM mytable
-- WHERE condition;
-- If you decide to leave out the WHERE constraint, then all rows are removed,
-- which is a quick and easy way to clear out a table completely (if intentional).
DELETE FROM movies WHERE year < 2005;

DELETE FROM movies WHERE director = "Andrew Stanton"

-- Lesson 16

-- CREATE TABLE IF NOT EXISTS mytable (
--     column DataType TableConstraint DEFAULT default_value,
--     another_column DataType TableConstraint DEFAULT default_value,
--     …
-- );
CREATE TABLE database (
     name TEXT,
     version FLOAT,
     download_count INTEGER
);

-- Lesson 17

-- ALTER TABLE mytable
-- ADD column DataType OptionalTableConstraint
--     DEFAULT default_value;

-- ALTER TABLE mytable
-- DROP column_to_be_deleted;

-- ALTER TABLE mytable
-- RENAME TO new_table_name;
ALTER TABLE movies
ADD Aspect_ratio FLOAT
DEFAULT 2.7

ALTER TABLE movies
ADD Language TEXT
DEFAULT "English"

-- Lesson 18

-- DROP TABLE IF EXISTS mytable;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS boxoffice;
