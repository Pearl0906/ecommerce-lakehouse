CREATE OR REFRESH MATERIALIZED VIEW silver_events AS

SELECT
    event_id,
    user_id,
    event_type,
    product_id,
    event_timestamp
FROM `e-commerce`.ecommerce.bronze_events;