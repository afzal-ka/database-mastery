------------------------------------------------------------
-- DATA DEFINITION LANGUAGE (DDL) - EXAMPLES
-- Description : Creating, modifying, and deleting database objects
------------------------------------------------------------

------------------------------------------------------------
-- 1. CREATE TABLE
------------------------------------------------------------
CREATE TABLE departments (
    dept_id     NUMBER(5) PRIMARY KEY,
    dept_name   VARCHAR2(50) NOT NULL,
    location    VARCHAR2(50)
);

------------------------------------------------------------
-- 2. CREATE TABLE WITH CONSTRAINTS
------------------------------------------------------------
CREATE TABLE employees (
    emp_id      NUMBER(5) PRIMARY KEY,
    emp_name    VARCHAR2(50) NOT NULL,
    salary      NUMBER(8,2) CHECK (salary > 0),
    dept_id     NUMBER(5),
    CONSTRAINT fk_dept
        FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

------------------------------------------------------------
-- 3. ALTER TABLE - ADD A COLUMN
------------------------------------------------------------
ALTER TABLE employees ADD email VARCHAR2(100);

------------------------------------------------------------
-- 4. ALTER TABLE - MODIFY COLUMN
------------------------------------------------------------
ALTER TABLE employees MODIFY emp_name VARCHAR2(100);

------------------------------------------------------------
-- 5. ALTER TABLE - RENAME COLUMN
------------------------------------------------------------
ALTER TABLE employees RENAME COLUMN email TO emp_email;

------------------------------------------------------------
-- 6. ALTER TABLE - DROP COLUMN
------------------------------------------------------------
ALTER TABLE employees DROP COLUMN emp_email;

------------------------------------------------------------
-- 7. RENAME TABLE
------------------------------------------------------------
RENAME employees TO company_employees;

------------------------------------------------------------
-- 8. TRUNCATE TABLE
-- Removes all data permanently but retains the table structure
------------------------------------------------------------
TRUNCATE TABLE company_employees;

------------------------------------------------------------
-- 9. DROP TABLE
-- Permanently deletes the table and its data
------------------------------------------------------------
DROP TABLE company_employees;

------------------------------------------------------------
-- 10. CREATE TABLE WITH MULTIPLE CONSTRAINTS
------------------------------------------------------------
CREATE TABLE projects (
    project_id    NUMBER(5) PRIMARY KEY,
    project_name  VARCHAR2(100) NOT NULL,
    start_date    DATE,
    end_date      DATE,
    budget        NUMBER(10,2) CHECK (budget > 0),
    dept_id       NUMBER(5) REFERENCES departments(dept_id)
);
