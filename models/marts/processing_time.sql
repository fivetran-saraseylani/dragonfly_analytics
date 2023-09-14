

SELECT
  d.date,
  ph.avg_processing_time_seconds AS peak_processing_time_seconds,
  tph.total_orders AS total_orders_per_hour
FROM {{ ref('int_daily_sales_summary') }} d
LEFT JOIN {{ ref('int_peak_processing_time_hours') }} ph
ON EXTRACT(HOUR FROM d.date) = ph.hour
LEFT JOIN {{ ref('int_transactions_per_hour') }} tph
ON EXTRACT(HOUR FROM d.date) = tph.hour