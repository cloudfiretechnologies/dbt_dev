{{
    config(
        materialized='table'
    )
}}



select * from {{ source('product_info', 'region') }}