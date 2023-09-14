

SELECT
  id as order_id,
  customer_id,
  created_at,
  closed_at,
  total_money as order_amount
FROM {{ source('square', 'order') }} 
