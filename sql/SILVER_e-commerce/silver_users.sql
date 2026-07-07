CREATE OR REFRESH MATERIALIZED VIEW silver_users AS
SELECT DISTINCT
    name,
    email,
    gender,
    city,
    signup_date
FROM bronze_users
WHERE user_id IS NOT NULL;