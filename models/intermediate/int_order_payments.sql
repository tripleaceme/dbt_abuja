SELECT
    o.order_id,
    o.customer_id,
    o.restaurant_id,
    o.order_date,
    o.order_amount,
    o.order_status,
    p.payment_method,
    p.payment_status,
    p.payment_date
FROM {{ ref('stg_orders') }} o
LEFT JOIN {{ ref('stg_payments') }} p ON o.order_id = p.order_id



