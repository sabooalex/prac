SELECT
    order_id,
    customer_id,
    order_timestamp,
    DATE_TRUNC('MONTH', order_timestamp) AS reporting_month


FROM {{ source('order_tables', 'cust_orders') }}

WHERE order_timestamp >= {{ get_load_date() }}