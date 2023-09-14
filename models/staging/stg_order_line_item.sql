

SELECT
  order_id,
  catalog_object_id,
  name as line_item_name,
  quantity,
  gross_sales_money as line_item_sales_value,
  quantity * line_item_sales_value AS revenue
FROM {{ source('square', 'order_line_item') }} 