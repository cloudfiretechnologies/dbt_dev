{% macro employee_hike(hike_per) %}


(SALARY+(SALARY*({{hike_per}}/100)))


{% endmacro %}

