Here are two solutions to the problem:

**Solution 1: Using a Common Table Expression (CTE)**

```sql
WITH USA_Users AS (
    SELECT id, name
    FROM users
    WHERE country = 'USA'
)
SELECT *
FROM USA_Users
WHERE id > 10;
```

**Solution 2: Using a JOIN (Assuming a self-join isn't needed)**

If the subquery is selecting from a different table than the main query, a JOIN would be appropriate. For simplicity, assuming the subquery is on the same table, we could adjust it as follows (if appropriate for your query):

```sql
SELECT u.* 
FROM users u
WHERE u.country = 'USA' AND u.id > 10; 
```

Note: If your original subquery referenced other tables or involved more complex logic, you'd need to adapt the JOIN accordingly.