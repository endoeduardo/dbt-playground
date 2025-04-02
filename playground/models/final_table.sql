{{ config(
    materialized='table'
) }}

SELECT 
    purchase_stg.customer_id,
    customer_user_tbl.customer_name, 
    customer_user_tbl.customer_age,
    purchase_stg.total_amount,
    purchase_stg.total_quantity,
    purchase_stg.mean,
    purchase_stg."Payment Method" AS payment_method
FROM {{ref("purchase_stg")}}
LEFT JOIN {{ref("customer_user_tbl")}}
ON purchase_stg.customer_id = customer_user_tbl.customer_id