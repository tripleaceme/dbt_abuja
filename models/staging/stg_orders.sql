WITH order_source AS (
    SELECT
        *
    FROM {{ source('raw', 'orders') }}
)

SELECT 
    order_id,
    customer_id,
    restaurant_id,
    CAST(order_date AS DATE) AS order_date,
    order_amount as total_amount,
    order_status
FROM order_source




