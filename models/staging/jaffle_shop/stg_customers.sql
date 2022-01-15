with customers as (
    
    select 
        id as customer_id,
        first_name,
        last_name

    from d4t93bhmgqavk5.jaffle_shop.customers
)

select * from customers