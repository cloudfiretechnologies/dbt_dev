SELECT 
       j.job_title,
       d.department_name,
       CONCAT(e.first_name, ' ', e.last_name) AS full_name,
       jh.start_date
  FROM {{ ref('raw_employee') }} as e 
  INNER JOIN {{ ref('raw_job_history') }} as jh 
    ON e.employee_id = jh.employee_id 

    INNER JOIN {{ ref('raw_jobs') }} as j 
    ON jh.job_id = j.job_id 
    
  INNER JOIN {{ ref('raw_department') }} as d 
    ON jh.department_id = d.department_id
     