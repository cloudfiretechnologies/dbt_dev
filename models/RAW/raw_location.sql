{{
    config(
        materialized='table'
    )
}}


select * from {{ source('hr_info', 'locations') }}