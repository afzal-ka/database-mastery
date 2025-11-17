# Exercises: Transaction Control Language (TCL)

Practice these exercises to understand how COMMIT, ROLLBACK, and SAVEPOINT work in Oracle SQL.

---

##  Level 1: Basic

1. Insert two records into `employees`.  
   - Commit the first insert.  
   - Rollback the second insert.  

2. Perform an update on an employee’s salary and then rollback the change.

---

##  Level 2: Intermediate

3. Insert three records and create a savepoint after each insert:  
   - Rollback to the second savepoint.  
   - Commit the final state.  

4. Demonstrate automatic commit behavior using a DDL command:
   - Insert a row  
   - Run `CREATE TABLE test_x (...)`  
   - Check if the insert was committed  

---

##  Level 3: Advanced

5. Build a "Bank Transfer" simulation:  
   - Debit from Account A  
   - Credit to Account B  
   - Use SAVEPOINTS  
   - Roll back if credit fails  

6. Use `SET TRANSACTION READ ONLY` to test read-only mode:
   - Attempt insert/update  
   - Observe Oracle behavior  

7. Write a script that:  
   - Inserts 5 employees  
   - Updates their salary  
   - Deletes 1 employee  
   - Uses multiple savepoints  
   - Performs a final rollback and then a new commit  

---

##  Challenge Task

Create a full transaction workflow:

- Insert a new order in an `orders` table  
- Insert order items in `order_items`  
- Update product stock levels  
- Use 3 savepoints:  
  - `sp_order_created`  
  - `sp_items_added`  
  - `sp_stock_updated`  
- Rollback to any stage based on simulated failure  
- Commit final successful result  

This models a real-world e-commerce transaction system.
