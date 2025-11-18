------------------------------------------------------------
-- Topic 06: Constraints – Examples
-- This script demonstrates all major types of constraints.
------------------------------------------------------------

------------------------------------------------------------
-- 1. NOT NULL Constraint
------------------------------------------------------------
CREATE TABLE students (
    student_id NUMBER NOT NULL,
    name       VARCHAR2(50) NOT NULL
);

INSERT INTO students (student_id, name)
VALUES (1, 'John');

-- This will fail (name cannot be NULL)
-- INSERT INTO students (student_id, name) VALUES (2, NULL);


------------------------------------------------------------
-- 2. UNIQUE Constraint
------------------------------------------------------------
CREATE TABLE users (
    user_id NUMBER PRIMARY KEY,
    email   VARCHAR2(100) UNIQUE
);

INSERT INTO users VALUES (1, 'a@example.com');

-- This will fail (duplicate email)
-- INSERT INTO users VALUES (2, 'a@example.com');


------------------------------------------------------------
-- 3. PRIMARY KEY Constraint
------------------------------------------------------------
CREATE TABLE employees (
    emp_id NUMBER PRIMARY KEY,
    name   VARCHAR2(50)
);

-- This will fail (duplicate emp_id)
-- INSERT INTO employees VALUES (101, 'Alice');
-- INSERT INTO employees VALUES (101, 'Bob');


------------------------------------------------------------
-- 4. FOREIGN KEY Constraint
------------------------------------------------------------
CREATE TABLE departments (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50)
);

INSERT INTO departments VALUES (10, 'Finance');
INSERT INTO departments VALUES (20, 'HR');

CREATE TABLE emp_details (
    emp_id   NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    dept_id  NUMBER,
    CONSTRAINT fk_dept FOREIGN KEY (dept_id)
        REFERENCES departments(dept_id)
);

INSERT INTO emp_details VALUES (1, 'Arun', 10);

-- This will fail (dept_id 99 does not exist)
-- INSERT INTO emp_details VALUES (2, 'Meera', 99);


------------------------------------------------------------
-- 5. CHECK Constraint
------------------------------------------------------------
CREATE TABLE products (
    product_id NUMBER PRIMARY KEY,
    price      NUMBER CHECK (price > 0)
);

INSERT INTO products VALUES (1, 50);

-- This will fail (price <= 0)
-- INSERT INTO products VALUES (2, -10);


------------------------------------------------------------
-- 6. DEFAULT Constraint
------------------------------------------------------------
CREATE TABLE accounts (
    acc_id  NUMBER PRIMARY KEY,
    status  VARCHAR2(10) DEFAULT 'ACTIVE'
);

INSERT INTO accounts (acc_id) VALUES (1001);  -- status = 'ACTIVE'
INSERT INTO accounts VALUES (1002, 'INACTIVE');


------------------------------------------------------------
-- 7. Adding Constraints After Table Creation
------------------------------------------------------------
CREATE TABLE temp_emp (
    id   NUMBER,
    name VARCHAR2(50),
    dept NUMBER
);

ALTER TABLE temp_emp 
ADD CONSTRAINT pk_temp_emp PRIMARY KEY (id);

ALTER TABLE temp_emp 
ADD CONSTRAINT fk_temp_dept FOREIGN KEY (dept)
    REFERENCES departments(dept_id);


------------------------------------------------------------
-- 8. Dropping Constraints
------------------------------------------------------------
ALTER TABLE temp_emp DROP CONSTRAINT fk_temp_dept;
ALTER TABLE temp_emp DROP CONSTRAINT pk_temp_emp;


------------------------------------------------------------
-- 9. ON DELETE CASCADE Example
------------------------------------------------------------
CREATE TABLE dept_cascade (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50)
);

CREATE TABLE emp_cascade (
    emp_id NUMBER PRIMARY KEY,
    name   VARCHAR2(50),
    dept_id NUMBER,
    CONSTRAINT fk_emp_dept
        FOREIGN KEY (dept_id)
        REFERENCES dept_cascade(dept_id)
        ON DELETE CASCADE
);

INSERT INTO dept_cascade VALUES (1, 'Admin');
INSERT INTO emp_cascade VALUES (101, 'Ravi', 1);

-- If department 1 is deleted → employee 101 is also deleted
-- DELETE FROM dept_cascade WHERE dept_id = 1;

------------------------------------------------------------
-- End of Examples
------------------------------------------------------------
