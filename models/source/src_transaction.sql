WITH src_transaction as (
    SELECT * FROM {{ source('project', 'transaction') }}
)
SELECT id as transaction_id,
    customer_id,
    product_id,
    quantity,
    transaction_date
FROM src_transaction