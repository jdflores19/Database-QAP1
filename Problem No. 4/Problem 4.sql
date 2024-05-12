-- Problem 4
-- Joseph Flores
-- May 14, 2024

-- Create a new database
-- Set up a rental called AirDnD
-- Initial setup includes the basic tables, namely: "guests" and "units"
-- Create another table called "bookings" to show the relationship between guests and units


-- Create a new database called "AirDnD". 
-- Note: This should be run first before running the rest of the script.
-- Another way of creating a database is right clicking on the database tab in pgAdmin and selecting "Create Database"
-- Set the name of the database to "AirDnD" and click save. This will create the database in the pgAdmin interface.
CREATE DATABASE "AirDnD"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
-- Guests table with several columns, setting guest_id as primary key
CREATE TABLE "Guests"
(
    guest_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50),
	address VARCHAR(50),
	city VARCHAR(50),
	postal_code VARCHAR(6),
	phone VARCHAR(15) NOT NULL
);

-- Units table with several columns, setting units_id as primary key
CREATE TABLE "Units"
(
    unit_id SERIAL PRIMARY KEY,
    unit_name VARCHAR(100) NOT NULL,
    floor_location VARCHAR(100) NOT NULL,
	private_bath BOOLEAN NOT NULL,
	unit_description VARCHAR(100)
);

-- Booking table, showing relationship among tables created in database
CREATE TABLE "Bookings"
(
    booking_id SERIAL PRIMARY KEY,
    guest_id INT NOT NULL,
    unit_id INT NOT NULL,
    booking_date DATE NOT NULL,
    CONSTRAINT fkey_guest
        FOREIGN KEY(guest_id)
            REFERENCES "Guests"(guest_id),
    CONSTRAINT fkey_unit
        FOREIGN KEY(unit_id)
            REFERENCES "Units"(unit_id)
);