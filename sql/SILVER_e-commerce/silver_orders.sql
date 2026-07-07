CREATE OR REFRESH MATERIALIZED VIEW silver_orders
AS order_id,
    user_id,
    CAST(order_date AS DATE) AS order_date,
    order_status,
    payment_method,
    total_amount
FROM bronze_orders
WHERE order_id IS NOT NULL;