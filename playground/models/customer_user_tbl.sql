{{ config(
    materialized='table',
) }}

SELECT customer_id, customer_name, customer_age FROM {{ref("customer_user_stg")}}