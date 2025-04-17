-- This test checks if the order_date in the fact_orders table is not in the future.

{% test not_in_future(model, column_name) %}

SELECT *
FROM {{ model }}
WHERE {{ column_name }} > CURRENT_DATE

{% endtest %}
