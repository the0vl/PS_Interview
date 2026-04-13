{{config(
    materialized='view'
)}}
with transactions AS
(
    SELECT * FROM {{ ref('fact_transaction') }}
),
customers AS
(
    SELECT * FROM {{ ref('src_customer') }}
)
SELECT t.*,
    c.first_name,
    c.last_name,
    c.email
FROM transactions t
INNER JOIN customers c
ON t.customer_id = c.customer_id
