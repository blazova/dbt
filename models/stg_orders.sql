with orders as (
    
    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from d4t93bhmgqavk5.jaffle_shop.orders
)

select * from orders