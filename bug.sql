```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```

This query might seem correct at first glance, but it can lead to unexpected behavior if the `salary` column contains `NULL` values.  Because any comparison to `NULL` results in `NULL` (not true or false), rows with `NULL` salaries will be excluded from the results even if the department matches.