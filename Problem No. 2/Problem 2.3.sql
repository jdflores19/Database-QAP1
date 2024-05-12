-- Problem 2.3
-- Joseph Flores
-- May 14, 2024

-- Display ratings and the number of titles under each of the rating category

SELECT film.rating, COUNT(*) 
FROM film
GROUP BY film.rating