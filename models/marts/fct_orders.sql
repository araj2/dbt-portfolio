select ord.order_id,
        ord.order_date,
        ord.customer_id,
        ord.order_status, 
        COALESCE(pay.total_payment,0) as total_payment
FROM {{ref ('stg_orders')}} as ord
LEFT JOIN {{ref ('int_order_payments')}} as pay
ON ord.order_id = pay.order_id