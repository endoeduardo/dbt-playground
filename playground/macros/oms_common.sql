{% macro calculate_total_payment(payment_method) %}

    SELECT sum(total_amount) AS total_amount, sum(mean) / sum(total_quantity) AS mean FROM {{ref('final_table')}}
    WHERE payment_method = '{{payment_method}}'
    GROUP BY payment_method

{% endmacro %}
