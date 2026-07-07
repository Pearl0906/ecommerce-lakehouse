CREATE OR REFRESH MATERIALIZED VIEW gold_sales_by_category AS

SELECT
    p.category,
    SUM(oi.quantity * oi.item_price) AS revenue,
    SUM(oi.quantity) AS items_sold
FROM silver_order_items oi
JOIN silver_products p
ON oi.product_id = p.product_id
GROUP BY p.category;