{{
    config(
        materialized='table'
    )
}}


{%- set start_date ='1993-01-01' -%}   --- variable declaration
{%- set end_date ='1997-08-31' -%} 




select j.job_title,d.department_name,concat(e.first_name,' ',e.last_name) as full_name 
from {{ ref('raw_employee') }} e inner join {{ ref('raw_job_history') }} jh 
ON e.employee_id=jh.employee_id 
and jh.start_date between '{{start_date}}' and '{{end_date}}' 
inner join {{ ref('raw_job') }} j on jh.job_id=j.job_id 
inner join {{ ref('raw_department') }} d on d.department_id=jh.department_id