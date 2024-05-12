-- Problem 3.4
-- Joseph Flores
-- May 14, 2024

-- Additional example: Harry Potter and Ginny Weasley got engaged, and moving in with his parents. 
-- They want to add Ginny in the customer list as well.

INSERT INTO customer
	(customer_id, store_id, first_name, last_name, email, address_id, activebool)
VALUES
	(803, '2', 'Ginny', 'Weasley', 'ginnyweasley@hogwarts.com', 701, 'true')

-- Eventually, they got married and Ginny changed her last name to Potter.
UPDATE customer
SET
	last_name = 'Potter'
WHERE
	customer_id = 803;

-- Unfortunately, they broke up after two weeks
DELETE FROM customer
where
	customer_id = 803;

-- I guess living happily ever after is a myth. Oh well.