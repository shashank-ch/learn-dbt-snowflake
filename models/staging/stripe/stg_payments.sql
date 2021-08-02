
select
    ID as payment_id,
    ORDERID as order_id,
    PAYMENTMETHOD as payment_method,
    STATUS,
    -- amount is stored in cents, convert it to dollars
    {{ cents_to_dollars('amount', 2) }} as amount,
    CREATED as created_on
    
from {{source('stripe','payment')}}