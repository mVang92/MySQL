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

SELECT firstName, lastName FROM customerTable;