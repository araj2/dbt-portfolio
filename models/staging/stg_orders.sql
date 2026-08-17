with 

source as ( 

    select * from {{ source('jaffle_shop','orders') }}

), 

renamed as ( 

    select 

    -----ids
    id as order_id, 
    user_id as customer_id, 

    ------timestamps 
    order_date as order_date, 

    ------string 
    status as order_status

    from source
)

select * from renamed 