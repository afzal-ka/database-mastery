# Topic 4: Data Query Language (DQL)

Data Query Language (DQL) is the part of SQL used to **retrieve data** from a database.
It primarily uses the `SELECT` statement to query, filter, sort, group, join, and analyze
data.

---

##  What is DQL?

DQL focuses only on **reading data**, not modifying it.

### Main Objective:
- Query the database
- Extract meaningful information
- Apply filters, sorting, grouping, aggregations, joins, and conditions

---

##  Core DQL Command

### `SELECT`
The only command in DQL used to retrieve data.

#### Basic Syntax:
```sql
SELECT column1, column2
FROM table_name;
```

### Select all columns:
```sql
SELECT * FROM table_name;
```

---

## Important DQL Clauses
### 1. WHERE — Filtering rows
```sql
SELECT * FROM employees
WHERE salary > 50000;
```
### 2. ORDER BY — Sorting data
```sql
SELECT first_name, salary
FROM employees
ORDER BY salary DESC;
```
### 3. DISTINCT — Remove duplicates
```sql
SELECT DISTINCT job_title FROM employees;
```
### 4. GROUP BY — Grouping rows
```sql
SELECT department, COUNT(*)
FROM employees
GROUP BY department;
```
### 5. HAVING — Filter groups
```sql
SELECT department, COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;
```
### 6. JOIN — Combine data from multiple tables
INNER JOIN
```sql
SELECT e.first_name, d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;
```
LEFT JOIN
```sql
SELECT e.first_name, d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;
```
### 7. Subqueries
```sql
SELECT first_name
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
```
### 8. Set Operators
- UNION
- UNION ALL
- INTERSECT
- MINUS
```sql
SELECT name FROM employees
UNION
SELECT name FROM ex_employees;
```
### 9. FETCH / ROWNUM — Limiting rows
```sql
SELECT * FROM employees
ORDER BY salary DESC
FETCH FIRST 3 ROWS ONLY;
```

---

## Window Functions (Analytic Functions)
Provide advanced row-level calculations.
### Example:
```sql
SELECT first_name, salary,
       RANK() OVER (ORDER BY salary DESC) AS rank_salary
FROM employees;
```
### Summary
| Feature          | Purpose            |
| ---------------- | ------------------ |
| SELECT           | Retrieve data      |
| WHERE            | Filter rows        |
| ORDER BY         | Sort results       |
| GROUP BY         | Aggregate groups   |
| HAVING           | Filter groups      |
| JOINS            | Combine tables     |
| SUBQUERIES       | Nested queries     |
| SET OPERATORS    | Combine results    |
| WINDOW FUNCTIONS | Advanced analytics |

DQL is the most powerful part of SQL for exploring and analyzing data.