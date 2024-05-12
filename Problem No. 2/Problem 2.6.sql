-- Problem 2.6
-- Joseph Flores
-- May 14, 2024

-- BONUS: Completing Problem#2 with only one SQL Statement
-- This contains all the requirements for problem 2: reduced number of columns (2), 
-- reduced number of rows (2) using WHERE, then using the GROUP BY, ORDER BY And JOIN clauses.

SELECT
	category.name AS category_name,
    COUNT (film.title) AS title_count
FROM
    film
INNER JOIN film_category ON film.film_id = film_category.film_id
INNER JOIN category on category.category_id = film_category.category_id
WHERE
	category.name LIKE 'S%'
GROUP BY
    category_name
ORDER BY category_name ASC;