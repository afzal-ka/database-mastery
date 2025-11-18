# 05. Data Control Language (DCL)

##  Overview
**DCL (Data Control Language)** consists of SQL commands used to control access and permissions in the database.  
These commands manage **who can access what** and **what operations they can perform**.

DCL is mainly used by:
- Database Administrators (DBAs)
- Security Administrators
- Developers managing user privileges during deployments

---

##  DCL Commands
DCL includes two primary commands:

| Command | Purpose |
|---------|---------|
| **GRANT** | Assign privileges to a user or role |
| **REVOKE** | Remove previously granted privileges |

---

##  1. GRANT
The `GRANT` statement provides privileges to users or roles.

### Syntax
```sql
GRANT privilege_list
ON object_name
TO user_or_role;
```

### Example 1: Granting SELECT privilege
```sql
GRANT SELECT ON employees TO user1;
```

### Example 2: Granting multiple privileges
```sql
GRANT INSERT, UPDATE ON departments TO hr_role;
```

### System-Level Privileges (Oracle)
```sql
GRANT CREATE SESSION TO user1;
GRANT CREATE TABLE TO developer;
```

### Types of Privileges
1. System Privileges    
Example:
- `CREATE SESSION` — Allows a user to log into Oracle
- `CREATE TABLE`, `DROP TABLE`

2. Object Privileges   
Example:
- `SELECT`, `INSERT`, `UPDATE`, `DELETE` on specific tables or views
- `EXECUTE` on procedures

---

## 2. REVOKE
The `REVOKE` command removes privileges assigned via `GRANT`.

### Syntax
```sql
REVOKE privilege_list
ON object_name
FROM user_or_role;
```

### Example: Revoke UPDATE privilege
```sql
REVOKE UPDATE ON employees FROM user1;
```

### Revoke system privilege
```sql
REVOKE CREATE TABLE FROM developer;
```

---

## Common Oracle Privileges
### System Privileges
| Privilege        | Description                      |
| ---------------- | -------------------------------- |
| `CREATE SESSION` | Allows user login                |
| `CREATE TABLE`   | Allows table creation            |
| `CREATE VIEW`    | Allows view creation             |
| `CREATE USER`    | Allows creating new users        |
| `DROP ANY TABLE` | Delete any table in the database |

### Object Privileges
| Privilege | Description                       |
| --------- | --------------------------------- |
| `SELECT`  | Read data                         |
| `INSERT`  | Insert rows                       |
| `UPDATE`  | Modify rows                       |
| `DELETE`  | Remove rows                       |
| `EXECUTE` | Run stored procedures or packages |

---

## ROLE Management
### Create a role
```sql
CREATE ROLE finance_role;
```
### Grant privileges to a role
```sql
GRANT SELECT, UPDATE ON transactions TO finance_role;
```
### Assign role to a user
```sql
GRANT finance_role TO user_finance;
```
### Revoke role
```sql
REVOKE finance_role FROM user_finance;
```

---

## Best Practices
- Use roles instead of assigning privileges directly.
- Grant minimum privileges needed (Principle of Least Privilege).
- Avoid giving dangerous system privileges unless required.
- Track privileges using DBA system views (e.g., `DBA_TAB_PRIVS`).

---

## Summary Table
| Command | Purpose           | Example                            |
| ------- | ----------------- | ---------------------------------- |
| GRANT   | Assign privileges | `GRANT SELECT ON emp TO user1;`    |
| REVOKE  | Remove privileges | `REVOKE SELECT ON emp FROM user1;` |
