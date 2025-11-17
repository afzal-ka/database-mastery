------------------------------------------------------------
-- Topic 04: Data Query Language (DQL) – Examples
------------------------------------------------------------
-- 1. Basic SELECT
SELECT * FROM employees;

-- 2. Selecting specific columns
SELECT first_name, last_name, salary FROM employees;

-- 3. Filtering with WHERE
SELECT * FROM employees
WHERE department = 'IT';

-- 4. Sorting results
SELECT first_name, salary
FROM employees
ORDER BY salary DESC;

-- 5. DISTINCT
SELECT DISTINCT job_title FROM employees;

-- 6. BETWEEN
SELECT * FROM employees
WHERE salary BETWEEN 40000 AND 80000;

-- 7. LIKE
SELECT * FROM employees
WHERE first_name LIKE 'A%';

-- 8. GROUP BY + HAVING
SELECT department_id, COUNT(*) AS emp_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5;

-- 9. INNER JOIN
SELECT e.first_name, d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

-- 10. LEFT JOIN
SELECT e.first_name, d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;

-- 11. Subquery example
SELECT first_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- 12. UNION example
SELECT first_name FROM employees
UNION
SELECT first_name FROM ex_employees;

-- 13. Fetch top-N rows
SELECT * FROM employees
ORDER BY salary DESC
FETCH FIRST 3 ROWS ONLY;

-- 14. Window Function (Rank)
SELECT first_name, salary,
       RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;
