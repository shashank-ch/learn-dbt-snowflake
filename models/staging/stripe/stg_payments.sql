
select
    ID payment_id,
    ORDERID order_id,
    PAYMENTMETHOD,
    STATUS,
    AMOUNT,
    CREATED,
    _BATCHED_AT
    
from "RAW"."STRIPE"."PAYMENT"  