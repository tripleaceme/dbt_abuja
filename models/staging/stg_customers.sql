WITH customer_source AS (
    SELECT
        *
    FROM {{ source('raw', 'customers') }}
)


SELECT
    customer_id,
    customer_name,
    customer_email,
    customer_city
FROM customer_source
WHERE customer_id IS NOT NULL
  AND customer_name IS NOT NULL
  AND customer_email IS NOT NULL
  AND customer_city IS NOT NULL
