# use moviesdb for all queries
USE moviesdb;

# find maximum imdb_rating
SELECT MAX(imdb_rating) FROM movies ;

# find maximum imdb rating for bollywood industry
SELECT MAX(imdb_rating) FROM movies WHERE industry = "bollywood";

# find minimum imdb rating for hollywood industry
SELECT MIN(imdb_rating) FROM movies WHERE industry = "hollywood";

# find average imdb rating for both industry
SELECT AVG(imdb_rating) FROM movies WHERE industry = "bollywood";
SELECT AVG(imdb_rating) FROM movies WHERE industry = "hollywood";

# find minimum imdb rating for Marvel Studios rounding to 2 decimal points
SELECT ROUND(MIN(imdb_rating),2) as avg_rating 
	FROM movies 
    WHERE studio = "Marvel Studios";
    
# find min, max, avg imdb rating for Marvel Studios rounding to 2 decimal points
SELECT MIN(imdb_rating) as min_rating,
	MAX(imdb_rating) as max_rating, 
    AVG(imdb_rating) AS avg_rating
    FROM movies WHERE studio = "Marvel Studios";

# show which industry produced how many movies
SELECT  industry,COUNT(*) FROM movies GROUP BY industry;

# show which studio produced how many movies
SELECT studio, COUNT(*) FROM movies GROUP BY studio;

# show(descending order) which studio produced how many movies
SELECT studio, COUNT(*) AS cnt 
	FROM movies 
    GROUP BY studio 
    ORDER BY cnt DESC;
    
# show average rating of each industry
SELECT industry, COUNT(industry) AS cnt, ROUND(avg(imdb_rating),2) AS avg_rating
	FROM movies 
    GROUP BY industry;
    
# show average rating and movie count of each studio
SELECT studio,COUNT(studio) AS cnt,ROUND(AVG(imdb_rating),2) AS avg_rating
	FROM movies
    GROUP BY studio
    ORDER BY avg_rating DESC;
    
# show average rating and movie count of each studio 
# filter the movies which doesn't have any studio and 
# sort in desc order
SELECT studio,
	COUNT(studio) as cnt,
    ROUND(AVG(imdb_rating),2) as avg_rating
    FROM movies
    WHERE studio != ""
    GROUP BY studio
    ORDER BY avg_rating DESC
    

    



