

SELECT
  DATE_TRUNC('year', created_at) AS year,
  SUM(revenue) AS total_revenue,
  COUNT(DISTINCT id) AS total_transactions,
  /* Add any other aggregated metrics related to yearly sales */
FROM {{ ref('int_sales') }}
GROUP BY 1