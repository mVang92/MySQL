-- INNER JOIN, returns all rows when there is at least one match in both tables
SELECT CONCAT(customerTable.firstName, ' ', customerTable.lastName) AS Customer, ordersTable.orderNumber AS 'Order Number'
FROM customerTable
INNER JOIN ordersTable
ON customerTable.customerId = ordersTable.customerId
ORDER BY ordersTable.orderNumber;

-- This query gives the same result as the one above
SELECT CONCAT(customerTable.firstName, ' ', customerTable.lastName) AS Customer, ordersTable.orderNumber AS 'Order Number'
FROM customerTable
LEFT JOIN ordersTable
ON customerTable.customerId = ordersTable.customerId
ORDER BY ordersTable.orderNumber;

-- RIGHT JOIN
SELECT ordersTable.orderNumber, customerTable.firstName, customerTable.lastName
FROM ordersTable
RIGHT JOIN customerTable
ON ordersTable.customerId = customerTable.customerId
ORDER BY ordersTable.orderNumber;

-- This query pulls data from three separate tables
SELECT ordersTable.orderNumber, customerTable.firstName, customerTable.lastName, productsTable.productName
FROM ordersTable
INNER JOIN productsTable
ON ordersTable.productId = productsTable.productId
INNER JOIN customerTable
ON ordersTable.customerId = customerTable.customerId
ORDER BY ordersTable.orderNumber;

SELECT customerTable.firstName, customerTable.lastName, ordersTable.orderNumber
FROM customerTable, ordersTable
WHERE customerTable.customerId = ordersTable.customerId
ORDER BY customerTable.customerId;

SELECT CONCAT(customerTable.firstName, ' ', customerTable.lastName) AS Customer, ordersTable.orderNumber AS 'Order Number', productsTable.productName AS 'Product Name'
FROM ordersTable
INNER JOIN productsTable
ON ordersTable.productId = productsTable.productId
INNER JOIN customerTable
ON ordersTable.customerId = customerTable.customerId
ORDER BY ordersTable.orderNumber;