CREATE OR REFRESH MATERIALIZED VIEW gold_customer_sales AS

SELECT
    o.user_id,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_sales,
    AVG(o.total_amount) AS average_order_value
FROM silver_orders o
GROUP BY o.user_id;