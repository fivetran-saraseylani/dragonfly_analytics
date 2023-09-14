

SELECT
  DATE_TRUNC('month', created_at) AS month,
  SUM(revenue) AS total_revenue,
  COUNT(DISTINCT id) AS total_transactions,
  /* Add any other aggregated metrics related to monthly sales */
FROM {{ ref('int_sales') }}
GROUP BY 1