{{ config(materialized='table') }}

with 

source as ( select * from {{ source('jaffle_shop','payments')}}

), 

renamed as ( 
    
    select 

        -------ids 
        id as payment_id, 
        order_id as order_id, 

        -------string 
        payment_method as payment_method, 

        -------decimal 
        amount /100.0 as amount_usd

    from source

)

select * from renamed