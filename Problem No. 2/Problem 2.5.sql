-- Problem 2.5
-- Joseph Flores
-- May 14, 2024

-- Using JOIN clause to combine 3 categories, namely: film_category, category and film
-- Helpful if we wish to show the category name since it is not specified in film

SELECT
	category.name AS category_name,
    COUNT (film.title) AS title_count
FROM film
INNER JOIN film_category ON film.film_id = film_category.film_id
INNER JOIN category on category.category_id = film_category.category_id
GROUP BY category_name
ORDER BY category_name ASC;