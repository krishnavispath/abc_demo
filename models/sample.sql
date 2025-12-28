select
*
from {{ source('RAW', 'ORDERS') }}