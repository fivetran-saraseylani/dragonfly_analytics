

SELECT
  d.date,
  ds.total_revenue AS daily_total_revenue,
  ds.total_transactions AS daily_total_transactions,
  ms.total_revenue AS monthly_total_revenue,
  ms.total_transactions AS monthly_total_transactions,
  ys.total_revenue AS yearly_total_revenue,
  ys.total_transactions AS yearly_total_transactions,
FROM {{ ref('int_daily_sales_summary') }} d
LEFT JOIN {{ ref('int_monthly_sales_summary') }} ms
ON DATE_TRUNC('month', d.date) = ms.month
LEFT JOIN {{ ref('int_yearly_sales_summary') }} ys
ON DATE_TRUNC('year', d.date) = ys.year