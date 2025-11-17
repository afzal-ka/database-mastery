# Exercises: Data Query Language (DQL)

These exercises help you practice retrieving data using Oracle SQL queries, including filtering, sorting, grouping, joins, subqueries, and set operations.

---

##  Level 1: Basic Queries

1. Display all columns from the `employees` table.  
2. Retrieve the `first_name`, `last_name`, and `salary` of all employees.  
3. Show all employees who work in the `'IT'` department.  
4. Display employees with a salary greater than **50000**.  
5. List employees hired after **01-JAN-2020**.

---

##  Level 2: Intermediate Queries

6. Display employees ordered by their `salary` in descending order.  
7. Retrieve unique job titles from the `employees` table using `DISTINCT`.  
8. Show employees whose names start with `'A'`.  
9. Retrieve employees whose salary is between **40000** and **80000**.  
10. Display employees who do **not** have a manager (`manager_id IS NULL`).  

---

##  Level 3: Grouping & Aggregation

11. Display the total number of employees.  
12. Show the **average salary** of all employees.  
13. Display the **highest** and **lowest** salary in the table.  
14. Show the **count of employees** in each department using `GROUP BY`.  
15. List departments having more than **5 employees** using `HAVING`.

---

##  Level 4: Joins

16. Display employee names along with their department names using `INNER JOIN`.  
17. List all employees and their departments using a `LEFT JOIN`.  
18. Show department names with the number of employees using `JOIN` + `GROUP BY`.  
19. Retrieve employees along with their manager’s name using a **self-join**.  
20. Display employees whose salary is higher than the **average salary of their department**.

---

##  Level 5: Subqueries

21. Display employees who earn more than the **company-wide average salary**.  
22. Show employees who work in departments located in `'New York'`.  
23. Retrieve the employee(s) with the **highest salary** using a subquery.  
24. List employees who have the same job title as `'John Doe'`.  
25. Display all employees whose salary is greater than **any** salary in the `interns` table.

---

##  Level 6: Set Operators

26. Use `UNION` to combine employee names from `employees` and `ex_employees`.  
27. Use `INTERSECT` to list employees who appear in both `employees` and `temp_employees`.  
28. Use `MINUS` to find employees who left the company.

---

##  Level 7: Advanced Query Tasks

29. Display the top **3 highest-paid employees** using `ROWNUM` or `FETCH FIRST`.  
30. Show departments where the **average salary** is greater than **60000**.  
31. Retrieve employees who have the **second highest salary** using subqueries.  
32. Display employees along with the total salary of their department using window functions.  
33. Rank employees by their salary using `RANK()` or `DENSE_RANK()`.

---

##  Challenge Task

Create a complete DQL script that performs:

1. Display all employees with department names and manager names.  
2. Show top 5 highest-paid employees (name, salary, department).  
3. List departments with more than 3 employees and show min/max/avg salary.  
4. Retrieve employees who have never managed anyone.  
5. Find employees whose salary is higher than the **highest salary** in `'Sales'` department.  
6. Use: JOIN, GROUP BY + HAVING, Subqueries, Window Functions.

---

**Tip:**  
Try writing multiple variations of each query using different joins and subquery styles.
