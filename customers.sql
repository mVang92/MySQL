CREATE DATABASE customers;
USE customers;

CREATE TABLE customerTable
(
	customerId INT NOT NULL AUTO_INCREMENT,
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    email VARCHAR(255),
    PRIMARY KEY (customerId)
);

-- Add a new column to the table
ALTER TABLE customerTable
ADD COLUMN age INT(10);

INSERT INTO customerTable (firstName, lastName, email, age)
VALUES ("Neo", "Anderson", "neo.anderson@gmail.com", 28);
INSERT INTO customerTable (firstName, lastName, email, age)
VALUES ("Jackie", "Chan", "j.chan@yahoo.com", 59);
INSERT INTO customerTable (firstName, lastName, email, age)
VALUES ("Bruce", "Almighty", "bruce.almighty@gmail.com", 38);
INSERT INTO customerTable (firstName, lastName, email, age)
VALUES ("Willy", "Wonka", "w.wonka@chocolateFactory.com", 46);
INSERT INTO customerTable (firstName, lastName, email, age)
VALUES ("Meng", "Vang", "something@gmail.com", 26);

SELECT * FROM customerTable;

-- Aliases must be in single quotes. Double quotes give syntax error
SELECT firstName AS 'First Name', lastName AS 'Last Name' FROM customerTable;

-- Concats the first name and last names together into a single Name column
SELECT CONCAT(firstName, ' ', lastName) AS 'Name' FROM customerTable;

-- Add in a few more columns
ALTER TABLE customerTable
ADD COLUMN address VARCHAR(255),
ADD COLUMN city VARCHAR(10), 
ADD COLUMN state VARCHAR(2),
ADD COLUMN zipCode INT(5);

-- Update the address for the row with id of 1.
-- MySQL does not support WHERE in INSERT INTO clause
UPDATE customerTable
SET address = "123 Fake St", city = "Fresno", state = "CA", zipCode = 54321
WHERE customerId = 1;
UPDATE customerTable
SET address = "3728 Main ST", city = "Chicago", state = "IL", zipCode = 12345
WHERE customerId = 2;

-- Correction for customer 2
UPDATE customerTable
SET address = "3728 Main St"
WHERE customerId = 2;

UPDATE customerTable
SET address = "9589 North Ave", city = "Boston", state = "MA", zipCode = 39204
WHERE customerId = 3;
UPDATE customerTable
SET address = "6384 South Blvd", city = "Sacramento", state = "CA", zipCode = 95824
WHERE customerId = 4;
UPDATE customerTable
SET address = "273 East Dr", city = "Alliance", state = "NE", zipCode = 47389
WHERE customerId = 5;

DELETE from customerTable
WHERE customerID = 6;

-- Displays our data in a prettier view
SELECT CONCAT(firstName, ' ', lastName) AS 'Name',
CONCAT(address, ' ', city, ', ', state, ' ', zipCode) AS Address
FROM customerTable;

-- Counts how many firstName rows are in the table
SELECT COUNT(firstName)
FROM customerTable;

-- Selects the second highest age in the data
SELECT MAX(age)
FROM customerTable
WHERE age NOT IN (SELECT MAX(age) FROM customerTable);

-- Order By clause, show age in descending order
SELECT age FROM customerTable
ORDER BY age DESC;

-- Look for people who live in these cities
SELECT * FROM customerTable
WHERE city IN ("Fresno", "Chicago");

-- Optional to use single quotes around the aliase
SELECT CONCAT(firstName, ' ', lastName) AS 'Name',
CONCAT(address, ' ', city, ', ', state, ' ', zipCode) AS Address
FROM customerTable;