ALTER TABLE orders
ADD COLUMN order_date DATE;

DESC orders;



UPDATE orders SET order_date='2025-01-10' WHERE order_id=1;
UPDATE orders SET order_date='2025-01-15' WHERE order_id=2;
UPDATE orders SET order_date='2025-02-05' WHERE order_id=3;
UPDATE orders SET order_date='2025-02-12' WHERE order_id=4;
UPDATE orders SET order_date='2025-03-01' WHERE order_id=5;

UPDATE orders SET order_date='2025-03-08' WHERE order_id=6;
UPDATE orders SET order_date='2025-03-15' WHERE order_id=7;
UPDATE orders SET order_date='2025-04-02' WHERE order_id=8;
UPDATE orders SET order_date='2025-04-10' WHERE order_id=9;
UPDATE orders SET order_date='2025-04-18' WHERE order_id=10;

UPDATE orders SET order_date='2025-05-01' WHERE order_id=11;
UPDATE orders SET order_date='2025-05-05' WHERE order_id=12;
UPDATE orders SET order_date='2025-05-10' WHERE order_id=13;
UPDATE orders SET order_date='2025-05-15' WHERE order_id=14;
UPDATE orders SET order_date='2025-05-20' WHERE order_id=15;

UPDATE orders SET order_date='2025-06-01' WHERE order_id=16;
UPDATE orders SET order_date='2025-06-05' WHERE order_id=17;
UPDATE orders SET order_date='2025-06-10' WHERE order_id=18;
UPDATE orders SET order_date='2025-06-15' WHERE order_id=19;
UPDATE orders SET order_date='2025-06-20' WHERE order_id=20;



SELECT *
FROM orders;


SELECT *
FROM orders
ORDER BY order_id;