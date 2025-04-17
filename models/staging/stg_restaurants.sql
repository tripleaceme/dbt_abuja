WITH restaurant_source AS (
    SELECT
        *
    FROM {{ source('raw', 'restaurants') }}
)


SELECT
    restaurant_id,
    restaurant_name,
    restaurant_city,
    cuisine_type
FROM restaurant_source
WHERE restaurant_id IS NOT NULL
  AND restaurant_name IS NOT NULL
  AND restaurant_city IS NOT NULL
