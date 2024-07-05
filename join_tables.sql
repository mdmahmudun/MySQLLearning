# use moviesdb for all queries
USE moviesdb;

# join(inner)  the movies and financials tables
# inner join: joins only the common records in the both table

SELECT movies.movie_id, title, budget, revenue, currency, unit
	FROM movies
    INNER JOIN financials 
    ON movies.movie_id = financials.movie_id;
    
# join (left) the movies and financials tables
# left join: joins the common records as well as the rest of the record
# from the first table

SELECT movies.movie_id, title, budget, revenue, currency, unit
	FROM movies
    LEFT JOIN financials
    ON movies.movie_id = financials.movie_id;
    
# join (right) the movies and financials tables
# right join: joins the common records as well as the rest of the records
# from the second table

SELECT financials.movie_id, title, budget, revenue, currency, unit
	FROM movies
    RIGHT JOIN financials
    ON movies.movie_id = financials.movie_id;
    
# join (full) the movies and financials tables
#full join is nothing but union between left join and right join

SELECT movies.movie_id, title, budget, revenue, currency, unit
	FROM movies
    LEFT JOIN financials
    ON movies.movie_id = financials.movie_id
UNION

SELECT financials.movie_id, title, budget, revenue, currency, unit
	FROM movies
    RIGHT JOIN financials
    ON movies.movie_id = financials.movie_id;
    
