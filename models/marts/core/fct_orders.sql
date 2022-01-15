 with orders as (
    select
        order_id,
        customer_id,
        amount
    from {{ ref('stg_orders') }}
    join {{ ref('stg_payments')}}
    using(order_id)
 )

 select * from orders