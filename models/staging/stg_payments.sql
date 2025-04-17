WITH payment_source AS (
    SELECT
        *
    FROM {{ source('raw', 'payments') }}
)

SELECT
    payment_id,
    order_id,
    payment_method,
    payment_status,
    CAST(payment_date AS DATE) AS payment_date
FROM payment_source

