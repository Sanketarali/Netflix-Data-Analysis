select * from netflix

--Total Number of Shows and Movies
SELECT type, COUNT(*) AS count
FROM netflix
GROUP BY type;

-- Top 10 Directors by Number of Titles Directed
SELECT director, COUNT(*) AS number_of_titles
FROM netflix
WHERE director IS NOT NULL
GROUP BY director
ORDER BY number_of_titles DESC
LIMIT 10;

--Top 10 Countries by Number of Titles Produced
SELECT country, COUNT(*) AS number_of_titles
FROM netflix
WHERE country IS NOT NULL
GROUP BY country
ORDER BY number_of_titles DESC
LIMIT 10;

--Number of Titles by Year of Release

SELECT release_year, COUNT(*) AS number_of_titles
FROM netflix
GROUP BY release_year
ORDER BY release_year DESC;

--SELECT rating, COUNT(*) AS count
FROM netflix
GROUP BY rating
ORDER BY count DESC;

--Top 10 Genres

SELECT listed_in, COUNT(*) AS number_of_titles
FROM netflix
GROUP BY listed_in
ORDER BY number_of_titles DESC
LIMIT 10;

--SELECT listed_in, COUNT(*) AS number_of_titles
FROM netflix
GROUP BY listed_in
ORDER BY number_of_titles DESC
LIMIT 10;

--Top 10 Actors with the Most Appearances

SELECT unnest(string_to_array(casts, ', ')) AS actor, COUNT(*) AS appearances
FROM netflix
WHERE casts IS NOT NULL
GROUP BY actor
ORDER BY appearances DESC
LIMIT 10;

--Most Common Release Year for Movies and Shows
SELECT release_year, COUNT(*) AS number_of_titles
FROM netflix
GROUP BY release_year
ORDER BY number_of_titles DESC
LIMIT 1;


-- Top 5 Genres for Movies and TV Shows
SELECT listed_in AS genre, COUNT(*) AS number_of_movies
FROM netflix
WHERE type = 'Movie'
GROUP BY genre
ORDER BY number_of_movies DESC
LIMIT 5;

--Titles with the Longest and Shortest Descriptions
-- Longest Descriptions
SELECT title, LENGTH(description) AS description_length
FROM netflix
ORDER BY description_length DESC
LIMIT 5;

---- Shortest Descriptions
SELECT title, LENGTH(description) AS description_length
FROM netflix
ORDER BY description_length ASC
LIMIT 5;

