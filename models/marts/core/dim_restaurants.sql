SELECT
    restaurant_id,
    restaurant_name,
    restaurant_city,
    cuisine_type
FROM {{ ref('stg_restaurants') }}
