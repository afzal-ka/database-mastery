------------------------------------------------------------
-- Topic 03: Data Manipulation Language (DML)
-- Examples demonstrating INSERT, UPDATE, DELETE, MERGE, and Transactions
------------------------------------------------------------

-- 1. INSERT Examples

-- Insert a single record into a table
INSERT INTO employees (emp_id, emp_name, job_title, salary, department)
VALUES (101, 'John Doe', 'Developer', 55000, 'IT');

-- Insert multiple records using INSERT ALL
INSERT ALL
  INTO employees (emp_id, emp_name, job_title, salary, department)
    VALUES (102, 'Jane Smith', 'Analyst', 48000, 'Finance')
  INTO employees (emp_id, emp_name, job_title, salary, department)
    VALUES (103, 'Robert Brown', 'Manager', 72000, 'Sales')
SELECT * FROM dual;

------------------------------------------------------------
-- 2. UPDATE Examples

-- Update a specific employee's salary
UPDATE employees
SET salary = 60000
WHERE emp_id = 101;

-- Increase salary for all employees in the IT department
UPDATE employees
SET salary = salary * 1.10
WHERE department = 'IT';

------------------------------------------------------------
-- 3. DELETE Examples

-- Delete an employee by ID
DELETE FROM employees
WHERE emp_id = 103;

-- Delete all employees from a specific department
DELETE FROM employees
WHERE department = 'Finance';

------------------------------------------------------------
-- 4. MERGE Example (UPSERT)

-- Synchronize data between two tables: employees and new_employees
MERGE INTO employees e
USING new_employees n
ON (e.emp_id = n.emp_id)
WHEN MATCHED THEN
  UPDATE SET e.salary = n.salary, e.department = n.department
WHEN NOT MATCHED THEN
  INSERT (emp_id, emp_name, job_title, salary, department)
  VALUES (n.emp_id, n.emp_name, n.job_title, n.salary, n.department);

------------------------------------------------------------
-- 5. Transaction Control Examples

-- Create a savepoint before update
SAVEPOINT before_update;

-- Perform an update
UPDATE employees
SET salary = salary + 5000
WHERE department = 'Sales';

-- Rollback to savepoint if needed
ROLLBACK TO before_update;

-- Commit the transaction permanently
COMMIT;

------------------------------------------------------------
-- End of DML Examples
------------------------------------------------------------
