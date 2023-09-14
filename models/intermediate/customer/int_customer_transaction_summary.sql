

SELECT
  order_id,
  COUNT(DISTINCT order_id) AS total_transactions,
  SUM(revenue) AS total_spent,
  MIN(created_at) AS first_purchase_date,
  MAX(created_at) AS last_purchase_date
FROM {{ ref('int_sales') }}
GROUP BY customer_id