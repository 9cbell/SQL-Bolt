--exercise 6
--6.1
SELECT title, domestic_sales, international_sales 
  FROM movies
    JOIN boxoffice
      ON movies.id = boxoffice.movie_id;
--6.2
SELECT title, domestic_sales, international_sales
  FROM movies
    JOIN boxoffice
      ON movies.id = boxoffice.movie_id
  WHERE international_sales > domestic_sales;
--6.;
SELECT title, rating
  FROM movies
    JOIN boxoffice
      ON movies.id = boxoffice.movie_id
  ORDER BY rating DESC;
--exercise 7
--7.1
SELECT DISTINCT building FROM employees;
--7.2
SELECT * FROM buildings;
--7.3
SELECT DISTINCT building_name, role 
  FROM buildings 
    LEFT JOIN employees
      ON building_name = building;
--exercise 8
--8.1
SELECT name, role FROM employees
  WHERE building IS NULL;
--8.2
SELECT DISTINCT building_name
  FROM buildings 
    LEFT JOIN employees
      ON building_name = building
    WHERE role IS NULL;
--exercise 9
--9.1
SELECT title, (domestic_sales + international_sales) / 1000000 AS gross_sales_millions
  FROM movies
    JOIN boxoffice
      ON movies.id = boxoffice.movie_id;
--9.2
SELECT title, rating * 10 AS rating_percent
  FROM movies
    JOIN boxoffice
      ON movies.id = boxoffice.movie_id;--9.2
--9.3
SELECT title, year 
  FROM movies
  WHERE year % 2=0
--exercise 10
--10.1
SELECT MAX(years_employed) as Max_years_employed
  FROM employees;
--10.2
SELECT role, AVG(years_employed) as Average_years_employed
  FROM employees
  GROUP BY role;
--10.3
SELECT building, SUM(years_employed) as Total_years_employed
  FROM employees
  GROUP BY building;
--exercise 11
--11.1
SELECT role, COUNT(*) as Number_of_artists
  FROM employees
  WHERE role = "Artist";
--11.2
SELECT role, COUNT(*)
  FROM employees
  GROUP BY role;
--11.3
SELECT role, SUM(years_employed)
  FROM employees
  GROUP BY role
  HAVING role = "Engineer";
--exercise 12
--12.1
SELECT director, COUNT(id) as Num_movies_directed
  FROM movies
  GROUP BY director;
--12.2
SELECT director, SUM(domestic_sales + international_sales) as Cumulative_sales_from_all_movies
  FROM movies
      INNER JOIN boxoffice
          ON movies.id = boxoffice.movie_id
  GROUP BY director;