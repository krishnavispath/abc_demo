{{ config(materialized='view') }}

select
  order_id,
  upper(product) as product_name,
  price,
  order_date
from {{ source('RAW', 'ORDERS') }}