# Topic 3 - Data Manipulation Language (DML)

## Overview
DML (Data Manipulation Language) statements are used to **manage and modify data** stored in database tables.  
Unlike DDL, which changes the structure, DML changes the **contents** of the database.

---

## Types of DML Statements
1. **INSERT** – Add new rows into a table  
2. **UPDATE** – Modify existing rows  
3. **DELETE** – Remove rows from a table  
4. **MERGE (UPSERT)** – Insert or update rows depending on whether they exist  

---

## 1. INSERT Statement

### Syntax
```sql
INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);
```
**Key Points:**
- All column data types must match values.
- Use single quotes for strings and dates.
- Omit column list only if values are provided for all columns in order.

## 2. UPDATE Statement

### Syntax
```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```
### Example
```sql
UPDATE employees
SET salary = salary * 1.10
WHERE department = 'Sales';
```
### Key Points:
- Always use a `WHERE` clause to avoid updating all rows.
- Multiple columns can be updated in one statement.

## 3. DELETE Statement

### Syntax
```sql
DELETE FROM table_name
WHERE condition;
```
### Example
```sql
DELETE FROM employees
WHERE emp_id = 105;
```

### Key Points:
- Without WHERE, all rows will be deleted.
- The table structure remains intact after deletion.

## 4. MERGE (UPSERT)
The `MERGE` statement allows you to insert new rows or update existing ones in a single command.
### Syntax
```sql
MERGE INTO target_table t
USING source_table s
ON (t.id = s.id)
WHEN MATCHED THEN
  UPDATE SET t.name = s.name
WHEN NOT MATCHED THEN
  INSERT (id, name) VALUES (s.id, s.name);
```

## 5. Transaction Control
DML operations are transactional, meaning changes aren’t permanent until committed.
- `COMMIT` → Save changes permanently
- `ROLLBACK` → Undo uncommitted changes
- `SAVEPOINT` → Mark a specific point in a transaction

## Summary Table
| Statement | Purpose          | Common Use           |
| --------- | ---------------- | -------------------- |
| INSERT    | Add data         | Adding new records   |
| UPDATE    | Modify data      | Adjusting salaries   |
| DELETE    | Remove data      | Removing old records |
| MERGE     | Insert or update | Synchronizing tables |

## Best Practices
- Always back up data before DML operations.
- Use transactions for grouped changes.
- Apply WHERE conditions carefully.
- Use `RETURNING` clause in Oracle to retrieve affected rows without a separate query.