-- Problem 2.4
-- Joseph Flores
-- May 14, 2024

-- Using ORDER in 2.3, to sort the result, specifying DECP to show the ratings in descendidng order

SELECT film.rating, COUNT(*) 
FROM film
GROUP BY film.rating
ORDER BY film.rating DESC