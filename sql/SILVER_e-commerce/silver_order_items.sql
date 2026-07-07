CREATE OR REFRESH MATERIALIZED VIEW silver_order_items 
AS

SELECT
    order_item_id,
    order_id,
    product_id,
    quantity,
    item_price
FROM `e-commerce`.ecommerce.bronze_order_items
WHERE order_item_id IS NOT NULL;