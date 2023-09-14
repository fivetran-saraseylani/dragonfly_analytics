

SELECT
  order_id,
  customer_id,
  transaction_id,
  type,
  created_at,
  amount_money,
  tip_money,
  processing_fee_money as processing_fee,
  card_details_card_brand as card_brand
  /* Add any other relevant attributes related to payment methods */
FROM {{ source('square', 'tender') }}