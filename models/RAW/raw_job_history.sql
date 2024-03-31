{{
    config(
        materialized='table'
    )
}}



select * from {{ source('hr_info', 'job_history') }}