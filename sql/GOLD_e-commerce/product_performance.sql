CREATE OR REFRESH MATERIALIZED VIEW gold_product_performance AS

SELECT
    oi.product_id,
    p.product_name,
    SUM(oi.quantity) AS units_sold,
    SUM(oi.quantity * oi.unit_price) AS revenue
FROM silver_order_items oi
JOIN silver_products p
ON oi.product_id = p.product_id
GROUP BY
    oi.product_id,
    p.product_name;