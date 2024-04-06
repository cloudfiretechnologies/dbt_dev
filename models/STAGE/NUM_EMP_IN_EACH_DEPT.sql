{{
    config(
        materialized='table'
    )
}}



{{dept_wise_emp_cnt('raw_department','raw_employee')}}
