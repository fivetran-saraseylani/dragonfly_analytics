SELECT
  id as customer_id,
  given_name ||' '|| family_name as name,
  email_address,
  birthday
  /* Add any other relevant customer attributes */
FROM {{ source('square', 'customer') }}