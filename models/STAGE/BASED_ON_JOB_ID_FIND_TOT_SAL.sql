{{
    config(
        materialized='table'
    )
}}

{% set job_ids= ["AD_PRES","IT_PROG","ST_CLERK","SA_REP"] %}


select job_id,
{% for j_id in job_ids %} 
sum({% if j_id == "AD_PRES" %}
case when job_id='AD_PRES' then salary end
{% elif j_id == "IT_PROG" %}
case when job_id='IT_PROG' then salary end
{% elif j_id == "ST_CLERK" %}
case when job_id='ST_CLERK' then salary end
{% elif j_id == "SA_REP" %}
case when job_id='SA_REP' then salary end
{% endif %}
) as {{j_id}}_tot_amt
 {% if not loop.last %},{% endif %}
{% endfor %}
from {{ ref('raw_employee') }} group by 1

