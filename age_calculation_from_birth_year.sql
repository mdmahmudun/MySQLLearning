# use moviesdb for all queries
USE moviesdb;

# get todays date
SELECT CURDATE();

# get current year
SELECT YEAR(CURDATE());

# get the current age of all actors
SELECT *, YEAR(CURDATE()) - birth_year as age FROM actors;