CREATE TABLE productsTable
(
	productId INT NOT NULL AUTO_INCREMENT,
    productName VARCHAR(255),
    PRIMARY KEY (productId)
);

SELECT * FROM productsTable;

-- Can use ADD COLUMN or just ADD
/*
ALTER TABLE productsTable
ADD COLUMN price INT(10);
*/

-- Changing the datatype to a float
ALTER TABLE productsTable
MODIFY price FLOAT(10);

INSERT INTO productsTable (productName, price)
VALUES ("Skittles", 1.49),
("Logitech M520", 29.99),
("iPhone Case", 19.95),
("Calculator", 9.99),
("Corsair K70", 129.99);

SELECT CONCAT('$', price, ': ', productName) AS 'Products'
FROM productsTable;