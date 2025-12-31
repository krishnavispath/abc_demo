{{ config(materialized='table') }}

select
  product_name,
  count(*) as order_count,
  sum(price) as total_sales
from {{ ref('stg_orders') }}
group by product_name
order by total_sales desc