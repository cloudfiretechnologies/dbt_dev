{{
    config(
        materialized='table'
    )
}}


SELECT JOB_ID, {{markup('AD_PRES')}} as AD_PRES_cnt, {{markup('IT_PROG')}} as IT_PROG_cnt
from {{ ref('raw_employee') }}
GROUP BY JOB_ID