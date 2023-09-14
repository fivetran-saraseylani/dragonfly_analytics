

SELECT
  order_id,
  type,
  payment_method_name,
  tip_money,
  processing_fee,
  card_brand,
  order_date,
  COUNT(DISTINCT transaction_id) AS total_transactions,
  SUM(revenue) as total_revenue
FROM {{ ref('int_transaction_with_payment_method') }} 