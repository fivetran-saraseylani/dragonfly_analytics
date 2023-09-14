

SELECT
  id as order_id,
  DATE(closed_at) as order_date,
  /* Add any other relevant attributes related to transactions */,
  EXTRACT(EPOCH FROM (closed_at - created_at)) AS processing_time_seconds
FROM {{ source('square', 'order') }}
