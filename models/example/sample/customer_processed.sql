select * 

from {{ source('order_tables','cust_orders') }}
