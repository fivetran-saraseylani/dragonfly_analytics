

SELECT
  customer_id,
  SUM(revenue) / COUNT(DISTINCT order_id) AS apv
FROM {{ ref('int_sales') }}
GROUP BY customer_id
