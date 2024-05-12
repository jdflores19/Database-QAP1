-- Problem 3.2
-- Joseph Flores
-- May 14, 2024

-- Edit address for the Potters


INSERT INTO address
	(address_id, address, district, city_id, postal_code, phone)
VALUES 
	(701, '4321 Not Main Street', 'Pinamalayan', '569', '34689', '4564564422');

-- Update address attribute for the potters
UPDATE customer
SET
	address_id = 701
WHERE
	address_id = 700;