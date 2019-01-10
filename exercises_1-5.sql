--exercise 1
--1.1
SELECT title FROM movies;
--1.2
SELECT director FROM movies; 
--1.3
SELECT director, title FROM movies; 
--1.4
SELECT title, year FROM movies; 
--1.4
SELECT * FROM movies;
--exercise 2
--2.1
SELECT id, title FROM movies
    WHERE id = 6;
--2.2
SELECT title, year FROM movies
    WHERE year BETWEEN 2000 AND 2010;
--2.3
SELECT title, year FROM movies
    WHERE year < 2000 OR year > 2010;
--2.4
SELECT title, year FROM movies
    WHERE year <= 2003;
--exercise 3
--3.1
SELECT title, director FROM movies 
    WHERE title LIKE "Toy Story%";
--3.2
SELECT title, director FROM movies 
    WHERE director = "John Lasseter";
--3.3
SELECT title, director FROM movies 
    WHERE director != "John Lasseter";
--3.4
SELECT * FROM movies 
    WHERE title LIKE "WALL-_";
--exercise 4
--4.1
SELECT DISTINCT director FROM movies
    ORDER BY director ASC;
--4.2
--exercise 5
