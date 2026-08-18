-- stg_customers.sql 


with 

source as ( 
    select * from {{ source('jaffle_shop','customers')}}

), 

renamed as ( 

    select 

    ------id
    id as customer_id, 


    ------strings
    first_name as first_name, 
    last_name as last_name

    from source
)

select * from renamed