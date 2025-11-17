# Exercises: Data Control Language (DCL)

Practice these tasks to understand privilege management and secure database access.

---

##  Level 1: Basic

1. Grant the `SELECT` privilege on the `employees` table to a user named `user1`.  
2. Create a role named `reporting_role`.  
3. Grant `CREATE SESSION` to `user1`.

---

##  Level 2: Intermediate

4. Grant `INSERT` and `UPDATE` privileges on `departments` to `reporting_role`.  
5. Assign the role `reporting_role` to user `user1`.  
6. Revoke `UPDATE` privilege from `reporting_role`.  

---

##  Level 3: Advanced

7. Create a role named `finance_role` and grant the following:
   - `SELECT` on `transactions`
   - `UPDATE` on `budget`
   - `INSERT` on `expenses`

8. Assign `finance_role` to a user named `finance_user`.

9. Revoke all privileges from `finance_role` without deleting the role.

10. Write a script to check privileges granted to a user using system views like:
   - `USER_TAB_PRIVS`
   - `DBA_SYS_PRIVS`

---

##  Challenge Task

Create a complete access control module:

- Create 3 roles: `hr_role`, `sales_role`, `admin_role`
- Grant object privileges to each role  
- Assign each role to two different users  
- Revoke selected privileges from one role  
- Document each step using SQL comments

This models a real-world enterprise privilege system.
