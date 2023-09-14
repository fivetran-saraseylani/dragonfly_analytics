

SELECT
  DATE_TRUNC('day', created_at ) AS date,
  SUM(revenue) AS total_revenue,
  COUNT(DISTINCT order_id) AS total_transactions,
  total_revenue / COUNT(DISTINCT transaction_id) AS average_transaction_value
  /* Add any other aggregated metrics related to daily sales */
FROM {{ ref('int_sales') }}
GROUP BY 1