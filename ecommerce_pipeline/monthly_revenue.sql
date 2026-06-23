SELECT
    MONTH(order_date) AS month_no,
    SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY MONTH(order_date)
ORDER BY month_no;