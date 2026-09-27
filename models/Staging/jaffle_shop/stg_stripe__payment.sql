-- select  * from raw.stripe.payment
with  renamed as (
    select 
    id as payment_id,
    order_id,
    payment_method,
    amount as payment_amount,
    created as payment_created,
    status as payment_status,
    _etl_loaded_at as _batched_at

    from  raw.stripe.payment
)

select * from renamed
