-- Problem 3.1
-- Joseph Flores
-- May 14, 2024

-- Using INSERT to add customers to dvdrental database, meeting specific conditions

-- Insert new address  and use in adding customers, to easily edit the address information in succeeding items
INSERT INTO address
	(address_id, address, district, city_id, postal_code, phone)
VALUES 
	(700, '1234 Main Street', 'Calapan', '300', '17886', '4564564444');

-- Same store, last name, address
INSERT INTO customer
	(customer_id, store_id, first_name, last_name, email, address_id, activebool)
VALUES
	(800, '2', 'James', 'Potter', 'jamespotter@hogwarts.com', 700, 'true'),
	(801, '2', 'Lily', 'Potter', 'lilypotter@hogwarts.com', 700, 'true'),
	(802, '2', 'Harry', 'Potter', 'harrypotter@hogwarts.com', 700, 'true');