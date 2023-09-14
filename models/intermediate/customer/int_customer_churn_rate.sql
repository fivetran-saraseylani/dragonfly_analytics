

WITH customer_last_purchase AS (
  SELECT
    customer_id,
    MAX(created_at) AS last_purchase_date
  FROM {{ ref('int_sales') }}
  GROUP BY customer_id
)

SELECT
  last_purchase_date,
  customer_id AS churned_customers
FROM customer_last_purchase
WHERE last_purchase_date <= NOW() - INTERVAL '180 days' -- Define your churn period
GROUP BY 1