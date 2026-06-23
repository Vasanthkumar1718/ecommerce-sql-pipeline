CREATE OR REPLACE VIEW sales_data AS
SELECT
    o.order_id,
    o.order_date,
    c.customer_name,
    c.city,
    p.product_name,
    o.quantity,
    p.price,
    o.quantity * p.price AS revenue
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
JOIN products p
    ON o.product_id = p.product_id;



SELECT *
FROM sales_data;