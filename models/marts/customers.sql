

SELECT
  c.customer_id,
  c.customer_name,
  c.customer_email,
  cts.total_transactions,
  cts.total_spent,
  cts.first_purchase_date,
  cts.last_purchase_date,
  ccr.churned_customers,
  apv.apv
FROM {{ ref('int_customer') }} c
LEFT JOIN {{ ref('int_customer_transaction_summary') }} cts
ON c.customer_id = cts.customer_id
LEFT JOIN {{ ref('int_customer_churn_rate') }} ccr
ON cts.customer_id = ccr.customer_id
LEFT JOIN {{ ref('int_customer_average_purchase_value') }} apv
ON c.customer_id = apv.customer_id