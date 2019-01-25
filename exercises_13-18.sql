--exercise 13
--13.1
INSERT INTO movies VALUES (4, "Toy Story 4", " Director", 2015, 90);
--13.2
INSERT INTO boxoffice VALUES (4, 8.7, 340000000, 270000000);



--excersise 14
--14.1
UPDATE movies
    SET director = "John Lasseter"
    WHERE id = 2;
--14.2
UPDATE movies
    SET year = 1999
    WHERE id = 3;
--14.3
UPDATE movies
    SET title = "Toy Story 3", director = "Lee Unkrich"
    WHERE id = 11;



--excersise 15
--15.1
DELETE FROM movies
    where year < 2005;
--15.2
DELETE FROM movies
    where director = "Andrew Stanton";



--exercise 16
CREATE TABLE Database (
    Name TEXT,
    Version FLOAT,
    Download_count INTEGER
);




--excerise 17
--17.1
ALTER TABLE Movies
  ADD COLUMN Aspect_ratio FLOAT DEFAULT 2.39;
--17.2
ALTER TABLE Movies
  ADD COLUMN Language TEXT DEFAULT "English";



--exercise 18
--18.1
DROP TABLE Movies;
--18.2
DROP TABLE BoxOffice;