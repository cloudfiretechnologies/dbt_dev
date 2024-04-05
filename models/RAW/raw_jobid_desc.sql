
with code as (
select * from {{ ref('country_codes') }} 

)  
select * from code


