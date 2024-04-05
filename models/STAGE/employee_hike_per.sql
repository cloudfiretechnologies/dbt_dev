
{{
    config(
        materialized='table'
    )
}}


select EMPLOYEE_ID,FIRST_NAME,JOB_ID,{{employee_hike('40')}} as tot_sal from {{ ref('raw_employee') }}