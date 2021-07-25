select
    order_id,
    sum(amount) as total_order_amount
from {{ ref('stg_payments') }}

group by 1
having not(total_order_amount >=0)