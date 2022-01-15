with payments as (
    
    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        amount,
        created

    from d4t93bhmgqavk5.stripe.payments
)

select * from payments