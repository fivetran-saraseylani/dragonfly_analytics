

SELECT
  EXTRACT(HOUR FROM order_date) AS hour,
  COUNT(DISTINCT order_id) AS total_orders
FROM {{ ref('stg_transaction_processing_time') }}
GROUP BY 1