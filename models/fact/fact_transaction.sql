with fact_transaction as (
    SELECT * FROM {{ ref('src_transaction') }} as t
)
SELECT transaction_id,
    customer_id,
    product_id,
    quantity,
    transaction_date
FROM fact_transaction
{% if is_incremental() %}
WHERE transaction_date > (SELECT MAX(transaction_date) FROM {{ this }})
{% endif %}
