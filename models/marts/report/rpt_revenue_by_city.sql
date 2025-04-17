SELECT
    customer_city,
    SUM(order_amount) AS total_revenue,
    COUNT(order_id) AS total_orders
FROM {{ ref('fact_orders') }}
WHERE order_status = 'Completed'
GROUP BY customer_city
ORDER BY total_revenue DESC