CREATE OR REFRESH MATERIALIZED VIEW silver_reviews AS
SELECT 
    review_id,
    user_id,
    product_id,
    rating,
    review_text,
    review_date
FROM bronze_reviews;