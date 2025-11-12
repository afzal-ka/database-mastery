# Topic 2 - DATA DEFINITION LANGUAGE (DDL)

---

## OVERVIEW

**Data Definition Language (DDL)** is a subset of SQL used to define and manage the **structure** of database objects such as tables, schemas, views, and indexes.  
Unlike DML (which manipulates data), DDL modifies the **schema** — i.e., the design or metadata of the database.

DDL statements are automatically **committed** in Oracle, meaning they **cannot be rolled back** once executed.

---

## KEY DDL COMMANDS

| Command | Description | Example |
|----------|--------------|----------|
| `CREATE` | Defines new database objects (e.g., tables, views, indexes). | `CREATE TABLE employees (...);` |
| `ALTER` | Modifies an existing object’s structure. | `ALTER TABLE employees ADD email VARCHAR2(100);` |
| `DROP` | Deletes an object permanently from the database. | `DROP TABLE employees;` |
| `TRUNCATE` | Removes all rows from a table but keeps its structure. | `TRUNCATE TABLE employees;` |
| `RENAME` | Renames a database object. | `RENAME employees TO staff;` |

---

## DDL COMMAND DETAILS

### 1. CREATE

Used to create database objects such as tables, views, or schemas.

**Syntax:**
```sql
CREATE TABLE table_name (
    column_name datatype(size) [constraint],
    ...
);
```
**Example:**
```sql
CREATE TABLE departments (
    dept_id     NUMBER(5) PRIMARY KEY,
    dept_name   VARCHAR2(50) NOT NULL,
    location    VARCHAR2(50)
);
```

### 2. ALTER

Used to modify an existing table’s structure (add, modify, rename, or drop columns).
**Examples:**
```sql
-- Add a new column
ALTER TABLE departments ADD manager_id NUMBER(5);

-- Modify a column datatype or size
ALTER TABLE departments MODIFY dept_name VARCHAR2(100);

-- Rename a column
ALTER TABLE departments RENAME COLUMN location TO dept_location;

-- Drop a column
ALTER TABLE departments DROP COLUMN manager_id;
```

### 3. RENAME
Used to rename database objects such as tables.
**Example:**
```sql
RENAME departments TO company_departments;
```

### 4. TRUNCATE
Removes all records from a table permanently, but keeps the structure for reuse.
Unlike DELETE, it cannot be rolled back and does not fire triggers.
**Example:**
```sql
TRUNCATE TABLE company_departments;
```

### 5. DROP
Permanently removes an object (table, view, index, etc.) from the database
**Example:**
```sql
DROP TABLE company_departments;
```
> ⚠️ Once dropped, the table and all its data are lost permanently.

---

## CONSTRAINTS IN DDL
Constraints are rules applied to table columns to enforce data integrity.

| Constraint    | Description                                | Example                                                 |
| ------------- | ------------------------------------------ | ------------------------------------------------------- |
| `PRIMARY KEY` | Uniquely identifies each record.           | `PRIMARY KEY (dept_id)`                                 |
| `FOREIGN KEY` | Establishes a relationship between tables. | `FOREIGN KEY (dept_id) REFERENCES departments(dept_id)` |
| `UNIQUE`      | Ensures all values are different.          | `UNIQUE (email)`                                        |
| `NOT NULL`    | Prevents NULL values.                      | `emp_name VARCHAR2(50) NOT NULL`                        |
| `CHECK`       | Ensures values meet a specific condition.  | `CHECK (salary > 0)`                                    |
**Example:**
```sql
CREATE TABLE employees (
    emp_id     NUMBER PRIMARY KEY,
    emp_name   VARCHAR2(50) NOT NULL,
    salary     NUMBER(8,2) CHECK (salary > 0),
    dept_id    NUMBER REFERENCES departments(dept_id)
);
```

---

## KEY DIFFERENCES: TRUNCATE vs DELETE vs DROP
| Feature           | TRUNCATE | DELETE | DROP |
| ----------------- | -------- | ------ | ---- |
| Removes data only | ✅        | ✅      | ❌    |
| Removes structure | ❌        | ❌      | ✅    |
| Rollback possible | ❌        | ✅      | ❌    |
| Triggers fired    | ❌        | ✅      | ❌    |
| Performance       | Fast     | Slow   | -    |

---

## REAL-LIFE ANALOGY
Think of a table as a spreadsheet:
- CREATE = make a new spreadsheet
- ALTER = add or change columns
- TRUNCATE = clear all data but keep the sheet
- DROP = delete the entire spreadsheet
- RENAME = change the spreadsheet’s name

---

## KEY TAKEAWAYS

- DDL modifies structure, not data.
- All DDL operations are auto-committed in Oracle.
- Constraints ensure data integrity and consistency.
- Use caution with DROP and TRUNCATE since they are irreversible.