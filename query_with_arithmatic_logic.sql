#print all the years where more than two movies were released
# FROM --> WHERE --> GROUP BY --> HAVING --> ORDER BY
USE moviesdb;
SELECT release_year, COUNT(*) as cnt 
	FROM movies 
    GROUP BY release_year
    HAVING cnt>2
    ORDER BY cnt DESC;
#print all the movies who released after 2014 and having a imdb_rating of 5+

SELECT  release_year,title, imdb_rating
	FROM movies 
    HAVING release_year > 2014 AND imdb_rating >5 
    ORDER BY release_year DESC;
