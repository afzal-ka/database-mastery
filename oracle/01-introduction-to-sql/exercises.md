# INTRODUCTION TO SQL — PRACTICE EXERCISES

This section provides structured exercises to help you build a solid understanding of basic SQL operations such as retrieving, filtering, sorting, and formatting data in Oracle Database.

---

## LEVEL 1: Basic Data Retrieval

**1. Retrieve all records**  
Write a query to display all data from the `departments` table.

**2. Select specific columns**   
Display only the `first_name` and `job_id` columns from the `employees` table.

---

## LEVEL 2: Filtering and Conditions

**3. Filter rows using WHERE**   
Show all employees who work in department 90.

**4. Use comparison operators**  
Display employees who earn more than 10,000.

**5. Combine conditions with AND / OR**  
List employees who work in department 30 or earn less than 5,000.

---

## LEVEL 3: Sorting, Aliases, and Expressions

**6. Sort data**  
Show all employees ordered by their `hire_date` in descending order (latest first).

**7. Use column aliases**  
Display the first and last names as `Employee Name`.

**8. Display calculated columns**  
Show each employee’s annual salary (`salary * 12`) with the alias `Annual_Salary`.

---

## LEVEL 4: DISTINCT, NULL, and Aggregates

**9. Remove duplicates**  
List all unique job IDs from the `employees` table.

**10. Handle NULL values**  
Show employees whose `commission_pct` is not null.

**11. Use aggregate functions**   
Display:

- Total number of employees
- Highest salary
- Lowest salary
- Average salary

---

## CHALLENGE TASK

Create a query that lists each employee’s full name, department ID, and annual salary,
but only for those earning more than 6,000, sorted by annual salary in descending order.

--- 

## REVIEW QUESTIONS

1. What is the difference between:
- `SELECT * FROM employees`;
- `SELECT DISTINCT * FROM employees`;
2. Explain what the `WHERE` clause does in a query.
3. What is the difference between filtering using WHERE and sorting using `ORDER BY`?
4. Why should you use aliases in SQL queries?

---

## KEY TAKEAWAYS

- SQL is used to query, filter, and analyze data from relational tables.
- The `SELECT` statement is the foundation of all queries.
- `WHERE` is used to filter rows based on conditions.
- `ORDER BY` controls the display order of results.
- Aliases and expressions make results more readable and meaningful.
- Aggregate functions like `COUNT()`, `MAX()`, and `AVG()` summarize data effectively.