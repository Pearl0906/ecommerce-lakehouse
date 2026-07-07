CREATE OR REFRESH MATERIALIZED VIEW silver_users AS
SELECT DISTINCT
    user_id,
    first_name,
    last_name,
    email,
    gender,
    age,
    city,
    country,
    signup_date
FROM bronze_users
WHERE user_id IS NOT NULL;