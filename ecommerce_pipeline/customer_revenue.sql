WITH SalesData AS
(
    SELECT
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
        ON o.product_id = p.product_id
),

CustomerRevenue AS
(
    SELECT
        customer_name,
        city,
        SUM(revenue) AS total_revenue
    FROM SalesData
    GROUP BY customer_name, city
)

SELECT *
FROM CustomerRevenue
ORDER BY total_revenue DESC;