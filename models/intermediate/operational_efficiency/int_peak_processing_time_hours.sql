

SELECT
  EXTRACT(HOUR FROM closed_at) AS hour,
  AVG(processing_time_seconds) AS avg_processing_time_seconds
FROM {{ ref('stg_transaction_processing_time') }}
GROUP BY 1
ORDER BY avg_processing_time_seconds DESC