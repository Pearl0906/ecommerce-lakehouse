CREATE OR REFRESH MATERIALIZED VIEW silver_products AS
SELECT DISTINCT
    product_id,
    product_name,
    category,
    brand,
    price
FROM `e-commerce`.ecommerce.bronze_products
WHERE product_id IS NOT NULL;