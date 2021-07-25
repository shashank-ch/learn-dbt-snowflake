with customers as (

    select * from {{ ref('stg_customers') }}

),

orders as (

    select * from {{ ref('stg_orders') }}

),

payments as (

    select * from {{ ref('stg_payments') }}
    where status = 'success'

),

final as (

    select 
        order_id,
        customer_id,
        SUM(amount)
     from orders
    left outer join customers using (customer_id)
    left outer join payments using (order_id)

    group by 1, 2
)

select * from final