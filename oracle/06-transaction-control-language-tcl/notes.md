# 06. Transaction Control Language (TCL)

##  Overview
**Transaction Control Language (TCL)** statements manage changes made by DML statements (`INSERT`, `UPDATE`, `DELETE`, `MERGE`) and control the logical units of work inside the database.

They ensure data integrity, consistency, and safe rollback in case of failure.
TCL commands apply only after DML, not after DDL..

TCL applies only to:
- INSERT
- UPDATE
- DELETE
- MERGE

It **does not** affect DDL commands, because DDL commits automatically in Oracle.

## 2. Why is TCL important?

TCL is essential for:

- Ensuring multiple related operations succeed together (atomicity).
- Undoing accidental or incorrect DML changes.
- Saving intermediate states.
- Maintaining consistency in multi-user environments.

TCL enforces ACID properties of transactions:

- Atomicity
- Consistency
- Isolation
- Durability
---

##  Key TCL Commands

| Command | Description |
|---------|-------------|
| **COMMIT** | Permanently saves the transaction |
| **ROLLBACK** | Undo uncommitted changes |
| **SAVEPOINT** | Create a point you can roll back to |
| **ROLLBACK TO SAVEPOINT** | Undo changes after the savepoint |
| **SET TRANSACTION** | Change transaction behavior (read/write mode, isolation) |

---

##  1. COMMIT
Makes all uncommitted changes permanent.

### Example
```sql
UPDATE employees SET salary = salary + 1000 WHERE department = 'IT';
COMMIT;
```
## 2. ROLLBACK
Reverts all uncommitted changes to the last COMMIT.
### Example
```sql
DELETE FROM employees WHERE emp_id = 105;
ROLLBACK;
```

## 3. SAVEPOINT

Creates a point within a transaction.

### Example
```sql
SAVEPOINT before_raise;

UPDATE employees SET salary = salary + 5000 WHERE emp_id = 101;
```

## 4. ROLLBACK TO SAVEPOINT

Reverts changes after a specific savepoint.

### Example
```sql
ROLLBACK TO before_raise;
```

## 5. SET TRANSACTION

Used to control transaction isolation or read/write mode.

### Example
```sql
SET TRANSACTION READ WRITE;
```

---

## Automatic Commit Scenarios in Oracle
Oracle performs an implicit commit when:
| Action                            | Auto-Commit? |
| --------------------------------- | ------------ |
| DDL command (CREATE, ALTER, DROP) | ✔ Yes        |
| User logs out                     | ✔ Yes        |
| System crash                      | ❌ No         |

---

## Real-World Example (Bank Transaction)
```sql
SAVEPOINT start_point;

UPDATE accounts SET balance = balance - 2000 WHERE acc_id = 1001;
UPDATE accounts SET balance = balance + 2000 WHERE acc_id = 2001;

-- If second update fails:
ROLLBACK TO start_point;

COMMIT;
```

---

## Summary Table
| Command               | Purpose                    |
| --------------------- | -------------------------- |
| COMMIT                | Save changes permanently   |
| ROLLBACK              | Undo all pending changes   |
| SAVEPOINT             | Create rollback checkpoint |
| ROLLBACK TO SAVEPOINT | Undo partial changes       |
| SET TRANSACTION       | Control transaction rules  |
