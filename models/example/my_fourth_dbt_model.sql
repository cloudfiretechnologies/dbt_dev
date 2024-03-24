{{
    config(
        materialized='table'
    )
}}



with temp_tbl as (
(select * from DBT_TEST.DBT_SCHEMA.COUNTRY limit 50)
union all
(select * from {{ ref('my_third_dbt_model') }})
)
select count(*) from temp_tbl