SELECT
    city,
    SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY city
ORDER BY total_revenue DESC;