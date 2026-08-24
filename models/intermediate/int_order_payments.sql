select
    order_id,
    sum(amount_usd) as total_payment
from {{ ref('stg_payments') }}
group by order_id