-- tests/not_in_future.sql

SELECT *
FROM {{ ref(model) }}
WHERE {{ column_name }} > CURRENT_DATE
