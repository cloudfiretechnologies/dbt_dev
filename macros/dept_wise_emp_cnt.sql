{% macro dept_wise_emp_cnt(dept_tbl,emp_tbl) %}

SELECT {{dept_tbl}}.department_name, COUNT({{emp_tbl}}.employee_id) AS num_employees 
FROM {{dept_tbl}} INNER JOIN {{emp_tbl}} ON {{dept_tbl}}.DEPARTMENT_ID={{emp_tbl}}.DEPARTMENT_ID
GROUP BY {{dept_tbl}}.department_name


{% endmacro %}