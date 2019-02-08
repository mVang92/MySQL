-- When delting all records from table, this query will disable code 1175
-- SET SQL_SAFE_UPDATES = 0;

CREATE TABLE ordersTable
(
	orderId INT NOT NULL AUTO_INCREMENT,
    customerId INT,
    productId INT,
    PRIMARY KEY (orderId),
    FOREIGN KEY (customerId) REFERENCES customerTable(customerId),
    FOREIGN KEY (productId) REFERENCES productsTable(productId)
);

SELECT * FROM ordersTable;

ALTER TABLE ordersTable
ADD orderNumber INT;

ALTER TABLE ordersTable
ADD orderDate DATETIME DEFAULT CURRENT_TIMESTAMP;

INSERT INTO ordersTable (customerId, productId, orderNumber)
VALUES (1, 5, 001),
(2, 1, 002),
(3, 4, 003),
(4, 5, 004),
(5, 2, 005),
(6, 4, 006),
(7, 3, 007);

-- This will not query because of relationship between the three tables
-- What is productId 9?
INSERT INTO ordersTable (customerId, productId, orderNumber)
VALUES (2, 9, 008);

SELECT CONCAT(customerTable.firstName, ' ', customerTable.lastName) AS 'Customer', ordersTable.orderNumber AS 'Order Number', productsTable.productName AS 'Product Name', productsTable.price AS 'Price'
FROM customerTable
INNER JOIN ordersTable
ON ordersTable.customerId = customerTable.customerId
INNER JOIN productsTable
ON ordersTable.productId = productsTable.productId;
