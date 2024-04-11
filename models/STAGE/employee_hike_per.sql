
{{
    config(
        materialized='table'
    )
}}


select {{ dbt_utils.generate_surrogate_key(['EMPLOYEE_ID', 'FIRST_NAME','JOB_ID']) }},EMPLOYEE_ID,FIRST_NAME,JOB_ID,{{employee_hike('40')}} as tot_sal from {{ ref('raw_employee') }}



select * from {{ ref('raw_employee') }}