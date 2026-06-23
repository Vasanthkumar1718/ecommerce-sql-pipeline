SELECT
    customer_name,
    SUM(revenue) AS total_revenue,
    RANK() OVER (
        ORDER BY SUM(revenue) DESC
    ) AS customer_rank
FROM sales_data
GROUP BY customer_name;