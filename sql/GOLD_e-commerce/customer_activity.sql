CREATE OR REFRESH MATERIALIZED VIEW gold_customer_activity AS

SELECT
    user_id,
    event_type,
    COUNT(*) AS total_events
FROM silver_events
GROUP BY
    user_id,
    event_type;