# use moviesdb for all queries
USE moviesdb;

# get the records where studio is not defined
SELECT * FROM movies WHERE studio = "";

# get the records where rating is greater than or equal to 8
SELECT * FROM movies WHERE imdb_rating>=8;

# rating less than equal to 5
SELECT * FROM movies WHERE imdb_rating <= 5;

# count the number of movies having rating between 6 and 8 usng and
SELECT COUNT(*) FROM movies WHERE imdb_rating>=6 AND imdb_rating <= 8;

# count the number of movies having rating between 6 and 8 usng between
SELECT * FROM movies WHERE imdb_rating BETWEEN 6 AND 8;
SELECT COUNT(*) FROM movies WHERE imdb_rating BETWEEN 6 AND 8;

# show the records of the movies which released in year 2022
SELECT * FROM movies WHERE release_year = 2022;

# count the number of movies which released in year 2022 using BETWEEN
SELECT COUNT(*) FROM movies WHERE release_year BETWEEN 2021 AND 2022;

# show the records of the movies which released in 2019, 20, 21
SELECT * FROM movies WHERE release_year IN (2019, 2020, 2021);

# show the records based on different studios
SELECT * FROM movies WHERE studio 
	IN ("Marvel Studios", "Mythri Movie Makers", "Dharma Productions");
    
# find the movies which don't have any imdb rating
SELECT * FROM movies WHERE imdb_rating IS NULL;
SELECT * FROM movies WHERE imdb_rating IS NOT NULL;

# show the records where rating is not empty from bollywood and sord by rating(descending)
SELECT * FROM movies 
	WHERE imdb_rating IS NOT NULL AND industry = "Bollywood" 
    ORDER BY imdb_rating DESC;
    
# show 5 movies from bollywood having top ratings
SELECT * FROM movies 
	WHERE industry = "hollywood" 
    ORDER BY imdb_rating DESC LIMIT 5;
    
# show 5 movies from bollywood having top ratings skipping first 4 records
SELECT * FROM movies 
	WHERE industry = "hollywood" 
    ORDER BY imdb_rating DESC LIMIT 5 OFFSET 4;
