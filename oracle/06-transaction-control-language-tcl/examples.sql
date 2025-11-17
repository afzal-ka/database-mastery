------------------------------------------------------------
-- Topic 06: Transaction Control Language (TCL)
-- Examples for COMMIT, ROLLBACK, SAVEPOINT, SET TRANSACTION
------------------------------------------------------------

-- 1. Start transaction: Insert new employee
INSERT INTO employees (emp_id, emp_name, salary, department)
VALUES (201, 'Alice James', 50000, 'Finance');

-- 2. Create a savepoint
SAVEPOINT sp_before_update;

-- 3. Update salary (temporary change)
UPDATE employees
SET salary = salary + 3000
WHERE emp_id = 201;

-- 4. Rollback to savepoint
ROLLBACK TO sp_before_update;

-- 5. Insert another employee
INSERT INTO employees (emp_id, emp_name, salary, department)
VALUES (202, 'Mark Wilson', 62000, 'IT');

-- 6. Commit transaction
COMMIT;

------------------------------------------------------------
-- SET TRANSACTION Example
------------------------------------------------------------
SET TRANSACTION READ WRITE;

UPDATE employees SET salary = salary * 1.05 WHERE department = 'IT';

COMMIT;

------------------------------------------------------------
-- End of TCL Examples
------------------------------------------------------------
