with src_product as (
SELECT * FROM {{ source('project', 'product') }}
)
SELECT id as product_id,
    name as product_name,
    category,
    price_gbp
FROM src_product