SELECT
    op.order_id,
    op.customer_id,
    op.restaurant_id,
    op.order_date,
    op.order_amount,
    op.order_status,
    op.payment_method,
    op.payment_status,
    c.customer_city,
    r.restaurant_name,
    r.cuisine_type
FROM {{ ref('int_order_payments') }} op
LEFT JOIN {{ ref('dim_customers') }} c ON op.customer_id = c.customer_id
LEFT JOIN {{ ref('dim_restaurants') }} r ON op.restaurant_id = r.restaurant_id
ORDER BY op.order_date ASC