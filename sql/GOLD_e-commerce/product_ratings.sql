CREATE OR REFRESH MATERIALIZED VIEW product_ratings AS
SELECT
    p.product_name,
    AVG(r.rating) AS average_rating,
    COUNT(r.review_id) AS number_of_reviews
FROM silver_reviews r
JOIN silver_products p
ON r.product_id = p.product_id
GROUP BY p.product_name;