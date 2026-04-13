with src_customers as (
    SELECT * FROM {{ source('project', 'customer') }}
)
SELECT id as customer_id,
    first_name,
    last_name,
    email,
    gender,
    age,
    country,
    signup_date
FROM src_customers