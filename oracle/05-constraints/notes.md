# 05. Constraints

## 1. What Are Constraints?

Constraints are rules applied on table columns to maintain data integrity, accuracy, and validity in the database.
They ensure that only valid data is inserted, updated, or deleted.

Constraints are enforced at the database level, not at application level — making them reliable and consistent.

---

## 2. Why Are Constraints Important?

Constraints help in:

- Protecting data accuracy
- Preventing invalid data entries
- Enforcing business rules
- Ensuring relational consistency
- Reducing application-side validation

---

## 3. Types of Constraints in Oracle SQL
### 3.1 NOT NULL Constraint
Ensures the column cannot store NULL values.
```sql
CREATE TABLE students (
    student_id NUMBER NOT NULL,
    name       VARCHAR2(50) NOT NULL
);
```
Used when data is mandatory.

### 3.2 UNIQUE Constraint
Ensures all values in a column (or combination of columns) are unique.
```sql
CREATE TABLE users (
    user_id NUMBER,
    email   VARCHAR2(100) UNIQUE
);
```
Multiple rows cannot have the same email.

### 3.3 PRIMARY KEY Constraint
Combination of:

- NOT NULL
- UNIQUE   

Identifies each row uniquely.
```sql
CREATE TABLE employees (
    emp_id NUMBER PRIMARY KEY,
    name   VARCHAR2(50)
);
```
Each table can have only one primary key (single or composite).


### 3.4 FOREIGN KEY Constraint
Creates a relationship between two tables.   
Ensures referenced values exist in the parent table.
```sql
CREATE TABLE orders (
    order_id NUMBER PRIMARY KEY,
    emp_id   NUMBER,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);
```
Prevents inserting order records with nonexistent employee IDs.

### 3.5 CHECK Constraint
Validates a condition before accepting data.
```sql
CREATE TABLE products (
    product_id NUMBER PRIMARY KEY,
    price      NUMBER CHECK (price > 0)
);
```
Only positive prices allowed.

### 3.6 DEFAULT Constraint
Assigns a default value when no value is provided.
```sql
CREATE TABLE accounts (
    acc_id   NUMBER PRIMARY KEY,
    status   VARCHAR2(10) DEFAULT 'ACTIVE'
);
```
If user doesn't specify status → system inserts ‘ACTIVE’.

---

## 4. Constraint Naming
You can specify your own names (recommended):
```sql
CONSTRAINT pk_emp PRIMARY KEY (emp_id)
CONSTRAINT fk_dept FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
CONSTRAINT chk_salary CHECK (salary > 0)
```
Naming conventions improve debugging, error tracing, and maintenance.

---

## 5. Adding Constraints After Table Creation
### Add NOT NULL:
```sql
ALTER TABLE employees
MODIFY name NOT NULL;
```

### Add PRIMARY KEY:
```sql
ALTER TABLE employees
ADD CONSTRAINT pk_emp PRIMARY KEY (emp_id);
```

### Add FOREIGN KEY:
```sql
ALTER TABLE orders
ADD CONSTRAINT fk_orders_emp
FOREIGN KEY (emp_id) REFERENCES employees(emp_id);
```

---

## 6. Dropping Constraints
```sql
ALTER TABLE employees DROP CONSTRAINT pk_emp;
```
### To drop NOT NULL:
```sql
ALTER TABLE employees
MODIFY name NULL;
```

---

## 7. Enabling & Disabling Constraints
Disable:
```sql
ALTER TABLE employees DISABLE CONSTRAINT pk_emp;
```
Enable:
```sql
ALTER TABLE employees ENABLE CONSTRAINT pk_emp;
```
Useful for bulk data loading.

---

## 8. Constraint Behavior on Delete (Referential Actions)
### ON DELETE CASCADE
Deletes child records when parent is deleted.
```sql
FOREIGN KEY (dept_id)
REFERENCES departments(dept_id)
ON DELETE CASCADE
```
### ON DELETE SET NULL
Sets child foreign key values to NULL when parent is deleted.
```sql
ON DELETE SET NULL
```

---

## 9. Best Practices
- Always name your constraints.
- Use CHECK for business rules.
- Avoid unnecessary NULL values.
- Use composite primary keys carefully.
- Prefer ON DELETE CASCADE only when logically needed.
- Enforce relationships using FOREIGN KEY rather than application code.