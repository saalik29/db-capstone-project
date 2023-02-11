USE little_lemon_db;
DROP PROCEDURE IF EXISTS GetMaxQuantity;
CREATE PROCEDURE GetMaxQuantity()
SELECT MAX(orders.Quantity)
FROM orders;