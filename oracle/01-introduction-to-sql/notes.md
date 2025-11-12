# Topic 1 – Introduction to SQL & Oracle Database


## Overview
This topic introduces SQL (Structured Query Language) and the Oracle Database environment.
You’ll learn what SQL does, how Oracle implements it, and the basic commands you’ll use to interact with data.
Understanding these fundamentals prepares you for deeper concepts like DDL, DML, and PL/SQL.

---

## 1. Key Concepts
**What is SQL?**

- SQL = Structured Query Language.
- Used to Create, Read, Update, and Delete data (CRUD).
- Works across most relational databases (Oracle, MySQL, PostgreSQL, etc.).
- Declarative – you tell the database what you want, not how to do it.

**What is Oracle Database?**

- An enterprise-grade Relational Database Management System (RDBMS) from Oracle Corp.
- Uses SQL and PL/SQL (Procedural Language SQL).
- Supports large-scale, multi-user, high-performance data management.

**SQL Sub-Languages**
| Category | Full Form                    | Purpose                                 | Example Commands                  |
| -------- | ---------------------------- | --------------------------------------- | --------------------------------- |
| **DDL**  | Data Definition Language     | Define & manage structure of DB objects | `CREATE`, `ALTER`, `DROP`         |
| **DML**  | Data Manipulation Language   | Add / modify / remove data              | `INSERT`, `UPDATE`, `DELETE`      |
| **DQL**  | Data Query Language          | Retrieve data                           | `SELECT`                          |
| **DCL**  | Data Control Language        | Control user access                     | `GRANT`, `REVOKE`                 |
| **TCL**  | Transaction Control Language | Manage transactions                     | `COMMIT`, `ROLLBACK`, `SAVEPOINT` |

**Oracle Specific Concepts**

- DUAL table → a dummy table used for single-row calculations or testing.
- Schema → a logical container (like a folder) holding tables, views, indexes, etc.
- User = Schema → each Oracle user owns its own schema.

---

## 2. Syntax & Examples
 SQL statements end with a semicolon `;` and are case-insensitive (best practice → uppercase keywords).

**Example 1 – Check Oracle Version**
```sql
SELECT * FROM v$version;
```
Output: Returns Oracle DB version and components.

**Example 2 – Current User**
```sql
SELECT user FROM dual;
```
Output: Displays the username of the current Oracle session.

**Example 3 – Create Table**
```sql
CREATE TABLE students (
    student_id   NUMBER PRIMARY KEY,
    student_name VARCHAR2(50),
    course       VARCHAR2(50)
);
```

**Example 4 – Insert Data**
```sql
INSERT INTO students (student_id, student_name, course)
VALUES (1, 'John Doe', 'Oracle SQL Basics');
```

**Example 5 – Retrieve Data**
```sql
SELECT * FROM students;
```

**Example 6 – Update Data**
```sql
UPDATE students
SET course = 'Advanced SQL'
WHERE student_id = 1;
```

**Example 7 – Delete Data**
```sql
DELETE FROM students
WHERE student_id = 1;
```

---

## 3. Real-Life Analogy
Think of the database as a library:
- Each table = a bookshelf.
- Each row = a book (record).
- Each column = a book attribute (title, author, price).
SQL is the librarian’s language to find, add, update, or remove books.

---

## 4. Key Takeaways (for Revision)

- SQL = language for interacting with relational databases.
- Oracle DB = RDBMS that uses SQL + PL/SQL.
- Schema = container for database objects.
- SQL is case-insensitive (but uppercase keywords help readability).
- DDL modifies structure; DML modifies data.
- Always end SQL commands with a semicolon ;.

---

## 5. Quick Revision Table
| Concept          | Command                         | Purpose               | Example                    |
| ---------------- | ------------------------------- | --------------------- | -------------------------- |
| Check DB version | `SELECT * FROM v$version;`      | Show Oracle version   | –                          |
| Current user     | `SELECT user FROM dual;`        | Identify session user | –                          |
| Create table     | `CREATE TABLE ...`              | Define structure      | `CREATE TABLE students...` |
| Insert data      | `INSERT INTO ... VALUES ...`    | Add rows              | `INSERT INTO students...`  |
| Retrieve data    | `SELECT * FROM ...;`            | Display records       | `SELECT * FROM students;`  |
| Update data      | `UPDATE ... SET ... WHERE ...;` | Modify rows           | `UPDATE students...`       |
| Delete data      | `DELETE FROM ... WHERE ...;`    | Remove rows           | `DELETE FROM students...`  |


