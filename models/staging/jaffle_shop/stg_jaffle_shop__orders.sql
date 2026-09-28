with 

source as (

    select * from {{ source('jaffle_shop', 'orders') }}

),

renamed as (

    select
        id as order_id,
        user_id as user_id,
        order_date as payment_date,
        status as payment_status,
        _etl_loaded_at

    from source

)

select * from renamed