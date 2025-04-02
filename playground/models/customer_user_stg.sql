{{ config(
    materialized='table',
    unique_key="Customer ID"
) }}

SELECT 
    COUNT(*) AS customer_count, 
    "Customer ID" AS customer_id, 
    "Customer Name" AS customer_name, 
    "Customer Age" AS customer_age
FROM customer c 
GROUP BY customer_id, customer_name, customer_age
