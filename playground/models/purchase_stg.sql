{{ config(
    materialized='table'
) }}

SELECT  total_amount, total_quantity, total_amount / total_quantity AS mean, "Customer ID" AS customer_id, "Payment Method"  FROM (
	SELECT sum("Product Price" * "Quantity") AS total_amount, sum("Quantity") AS total_quantity, "Customer ID", "Payment Method" 
	FROM purchase
		GROUP BY "Customer ID", "Payment Method"
) AS aux_tbl
