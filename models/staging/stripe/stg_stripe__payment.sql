with 

source as (

    select * from {{ source('stripe', 'payment') }}

),

renamed as (

    select
        id,
        order_id,
        payment_method,
        status,
        created,
        _etl_loaded_at,
        amount

    from source

)

select * from renamed