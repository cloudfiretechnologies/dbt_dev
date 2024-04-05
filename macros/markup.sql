{% macro markup(jid) %}

SUM(CASE WHEN JOB_ID='{{jid}}' THEN 1 ELSE 0 END)


{% end macro %}