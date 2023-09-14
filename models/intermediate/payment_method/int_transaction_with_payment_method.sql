

SELECT
  pm.transaction_id,
  pm.order_id
  pm.type,
  pm.tip_money,
  pm.processing_fee,
  pm.card_brand,
  s.order_id,
  s.created_date as order_date,
  s.catalog_object_id,
  s.quantity,
  s.line_item_sales_value,
  s.revenue
  /* Add any other relevant attributes related to payment methods from your data */
FROM {{ ref('stg_payment_method') }} pm
LEFT JOIN {{ ref('int_sales') }} s
ON pm.order_id = s.order_id