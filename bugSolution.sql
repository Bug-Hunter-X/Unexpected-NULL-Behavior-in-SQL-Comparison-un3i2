```sql
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL);
```

This corrected query uses `OR salary IS NULL` to explicitly include rows where the salary is `NULL`. Alternatively, you can use the `IS NOT NULL` operator to filter out `NULL` values before the comparison:

```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary IS NOT NULL AND salary > 100000;
```
This version gives you more control over how NULL values are handled in your query.