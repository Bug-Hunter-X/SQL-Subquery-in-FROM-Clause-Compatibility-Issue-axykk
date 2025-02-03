The following SQL query attempts to use a subquery in the FROM clause, which is not supported by all SQL databases (e.g., MySQL).  The subquery should be incorporated as a CTE or rewritten using joins.

```sql
SELECT * FROM (SELECT id, name FROM users WHERE country = 'USA') AS subquery WHERE id > 10;
```