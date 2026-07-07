CREATE OR REFRESH MATERIALIZED VIEW silver_orders
AS SELECT  
order_id,
    user_id,
    CAST(order_date AS DATE) AS order_date,
    order_status,
    total_amount
FROM `e-commerce`.ecommerce.bronze_orders
WHERE order_id IS NOT NULL;