# DATA DEFINITION LANGUAGE (DDL) — PRACTICE EXERCISES

These exercises will help you understand how to define, modify, and delete database structures using Oracle SQL DDL commands.

---

## LEVEL 1: Create and Understand Table Structures

**1. Create a Table**  
Create a table named `students` with the following columns:  
- `student_id` (NUMBER, Primary Key)  
- `student_name` (VARCHAR2(50), Not Null)  
- `age` (NUMBER)  
- `course` (VARCHAR2(50))  

**2. Create a Table with Constraints**  
Create a table `courses` with:  
- `course_id` (NUMBER, Primary Key)  
- `course_name` (VARCHAR2(50), Not Null)  
- `duration_months` (NUMBER, must be greater than 0)

---

## LEVEL 2: Modify and Manage Tables

**3. Add a Column**  
Add a column `email VARCHAR2(100)` to the `students` table.

**4. Modify a Column**  
Change the size of `student_name` to `VARCHAR2(100)`.

**5. Rename a Column**  
Rename `age` to `student_age`.

**6. Drop a Column**  
Remove the `course` column from the `students` table.

---

## LEVEL 3: Rename, Truncate, and Drop

**7. Rename a Table**  
Rename the `students` table to `college_students`.

**8. Truncate a Table**  
Remove all records from `college_students` without deleting the table.

**9. Drop a Table**  
Delete the `courses` table completely from the database.

---

## LEVEL 4: Working with Constraints

**10. Create a Table with Multiple Constraints**  
Create a table `instructors` with the following rules:  
- `instructor_id` (NUMBER, Primary Key)  
- `instructor_name` (VARCHAR2(50), Not Null)  
- `salary` (NUMBER, must be greater than 0)  
- `dept_id` (NUMBER, Foreign Key referencing `departments(dept_id)`)

---

## CHALLENGE TASK

Create a new table named `training_sessions` with these conditions:
- `session_id` (Primary Key)
- `topic` (VARCHAR2(100), Not Null)
- `start_date` and `end_date` (DATE)
- `instructor_id` (Foreign Key referencing `instructors(instructor_id)`)
- Add a CHECK constraint ensuring `end_date > start_date`

---

## REVIEW QUESTIONS

1. What is the difference between `TRUNCATE` and `DELETE`?  
2. Why are DDL statements auto-committed in Oracle?  
3. What is the effect of the `DROP TABLE` command?  
4. How do constraints help in maintaining data integrity?  
5. Can you rollback a `TRUNCATE` command? Why or why not?

---

## KEY TAKEAWAYS

- DDL commands modify **structure**, not **data**.  
- Common DDL commands: `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `RENAME`.  
- Constraints enforce **rules** that ensure data accuracy.  
- DDL statements are **auto-committed** and cannot be rolled back.  
- Use caution when dropping or truncating objects — these actions are irreversible.

---


