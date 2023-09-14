

SELECT
  o.id as order_id,
  o.customer_id,
  o.created_at,
  o.closed_at,
  o.total_money as order_amount,
  oli.order_id,
  oli.catalog_object_id,
  oli.name as line_item_name,
  oli.quantity,
  oli.gross_sales_money as line_item_sales_value,
  oli.quantity * line_item_sales_value AS revenue
FROM {{ ref('stg_order') }} o
LEFT JOIN {{ ref('stg_order_line_item') }} oli
ON o.id = oli.order_id