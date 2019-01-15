CREATE DATABASE customers;
USE customers;

CREATE TABLE customerTable
(
	customerId INT(10) NOT NULL AUTO_INCREMENT,
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