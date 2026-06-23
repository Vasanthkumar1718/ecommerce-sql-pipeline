-- Revenue by City
SELECT
    city,
    SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY city;

-- Product Revenue
SELECT
    product_name,
    SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY product_name;

-- Customer Ranking
SELECT
    customer_name,
    SUM(revenue) AS total_revenue,
    RANK() OVER (
        ORDER BY SUM(revenue) DESC
    ) AS customer_rank
FROM sales_data
GROUP BY customer_name;

-- Monthly Revenue
SELECT
    MONTH(order_date) AS month_no,
    SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY MONTH(order_date);