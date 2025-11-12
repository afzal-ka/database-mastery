# Data Manipulation Language (DML) — PRACTICE EXERCISES

These exercises are designed to help you practice inserting, updating, deleting, and merging data  
in Oracle SQL, along with understanding transactions.

---

## Level 1: Basic

1. Insert three new records into the `employees` table with details of your choice.  
2. Update the job title of an employee with `emp_id = 102`.  
3. Delete the record of the employee whose name is `'Robert Brown'`.  

---

## Level 2: Intermediate

4. Increase the salary of all employees in the `'IT'` department by 10%.  
5. Delete all employees whose salary is below `40000`.  
6. Use the `RETURNING` clause to display the name and new salary after an update.  
7. Insert multiple departments into a `departments` table using `INSERT ALL`.  

---

## Level 3: Advanced

8. Write a `MERGE` statement to synchronize data between `employees` and `new_employees`.  
   - If the employee exists, update their salary and department.  
   - If not, insert a new record.  

9. Demonstrate transaction control using:  
   - `SAVEPOINT` before an update  
   - A rollback to the savepoint  
   - A final `COMMIT` after successful updates  

10. Delete employees who are **not** listed in an `active_employees` table using a subquery.  

---

## Challenge Task

Create a mini DML script that performs all the following operations:
1. Insert 5 products into a `products` table.  
2. Increase the price of all products in the `'Electronics'` category by 15%.  
3. Delete all products marked as `'Discontinued'`.  
4. Demonstrate transaction control with `SAVEPOINT`, `ROLLBACK`, and `COMMIT`.  
5. Use the `RETURNING` clause to display the updated data after changes.  

---

 **Tip:**  
Before running destructive operations like `UPDATE` or `DELETE`,  
always run a `SELECT` query first to confirm the affected rows.
