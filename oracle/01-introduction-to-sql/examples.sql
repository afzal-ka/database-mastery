------------------------------------------------------------
-- INTRODUCTION TO SQL - EXAMPLES
-- Description : Core SQL examples for beginners using Oracle
------------------------------------------------------------

-- 1. Display all records from a table
SELECT * FROM employees;

-- 2. Display specific columns
SELECT first_name, last_name, salary FROM employees;

-- 3. Remove duplicate values using DISTINCT
SELECT DISTINCT department_id FROM employees;

-- 4. Filter results using WHERE clause
SELECT * FROM employees
WHERE salary > 5000;

-- 5. Use comparison and logical operators
SELECT * FROM employees
WHERE department_id = 10
  AND salary BETWEEN 4000 AND 8000;

-- 6. Sort data using ORDER BY
SELECT first_name, salary 
FROM employees
ORDER BY salary DESC;

-- 7. Limit the number of rows (Oracle syntax)
SELECT first_name, last_name
FROM employees
FETCH FIRST 5 ROWS ONLY;

-- 8. Use column aliases
SELECT first_name AS "First Name", 
       last_name AS "Last Name"
FROM employees;

-- 9. Concatenate columns
SELECT first_name || ' ' || last_name AS "Full Name"
FROM employees;

-- 10. Use arithmetic expressions
SELECT first_name, 
       salary, 
       salary * 12 AS "Annual Salary"
FROM employees;

-- 11. Check for NULL values
SELECT first_name, commission_pct
FROM employees
WHERE commission_pct IS NULL;

-- 12. Apply basic aggregate functions
SELECT COUNT(*)  AS total_employees,
       MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary,
       AVG(salary) AS average_salary
FROM employees;
