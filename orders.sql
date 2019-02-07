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
MODIFY orderDate DATETIME DEFAULT CURRENT_TIMESTAMP;

INSERT INTO ordersTable (customerId, productId, orderNumber)
VALUES (1, 7, 001),
(2, 1, 002),
(3, 6, 003),
(4, 5, 004),
(5, 2, 005),
(6, 4, 006),
(7, 8, 007);
