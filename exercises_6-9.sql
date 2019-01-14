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

--exercise 8

--exercise 9
