WITH TMP AS(

SELECT * FROM {{ ref('raw_employee') }}
)

select JOB_ID,count(JOB_ID) from TMP group by JOB_ID having count(*)>1