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