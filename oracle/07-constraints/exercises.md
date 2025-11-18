# Exercises: Constraints

These exercises help you understand and practice applying NOT NULL, UNIQUE, PRIMARY KEY, FOREIGN KEY, CHECK, and DEFAULT constraints in Oracle SQL.

## Level 1: Basic
1. Create a `students` table with:
- `id` NUMBER (PRIMARY KEY)
- `name` VARCHAR2(50) NOT NULL
- `age` NUMBER CHECK (age > 0)

2. Insert valid records into the table.
3. Try inserting a record with:
- `NULL` name
- Negative age
and observe the error messages.
4. Create a `countries` table with:
- `code` VARCHAR2(3) PRIMARY KEY
- `name` VARCHAR2(50) UNIQUE
5. Insert a duplicate country name and verify the UNIQUE constraint violation.

---

## Level 2: Intermediate
6. Create a `departments` table with:
- `dept_id` PRIMARY KEY
- `dept_name` UNIQUE

7. Create an employees table with:
- `emp_id` PRIMARY KEY
- `emp_name` NOT NULL
- `salary` NUMBER
- `dept_id` FOREIGN KEY referencing `departments(dept_id)`

8. Perform the following:
- Insert valid employee data
- Try inserting an employee with an invalid `dept_id`
- Try deleting a department that is referenced by employees

9. Add a CHECK constraint to ensure salary is greater than 0.

---

## Level 3: Advanced
10. Create an orders table with:
- `order_id` PRIMARY KEY
- `order_date` DATE DEFAULT SYSDATE
- `amount` NUMBER CHECK (amount BETWEEN 100 AND 10000)

11. Create an `order_items` table with:
- `item_id` PRIMARY KEY
- `order_id` FOREIGN KEY referencing `orders(order_id)` ON DELETE CASCADE
- `quantity` NUMBER CHECK (quantity >= 1)

12. Insert sample order and item data:
- Delete an order and verify cascading behavior
- Insert invalid quantity and check for errors

13. Disable and enable CHECK constraints during bulk load and observe system behavior.

---

## Level 4: Expert Tasks

14. Create a composite PRIMARY KEY on (`order_id`, `product_id`) in a table order_details.

15. Apply multiple CHECK constraints on the same column (e.g., `discount BETWEEN 0 AND 50`, `discount < price`).

16. Create a FOREIGN KEY referencing a UNIQUE key instead of a PRIMARY KEY.

17. Write a SQL script that:
- Drops all constraints
- Recreates them with meaningful names
- Adds `ON DELETE SET NULL` on applicable foreign keys

---

## Challenge Task
Design a complete constraints-based schema script:

1. Create `categories`, `products`, and `inventory` 
tables using:
- PRIMARY KEY
- FOREIGN KEY
- UNIQUE
- CHECK
- DEFAULT
2. Insert records and intentionally violate some constraints to observe errors.
3. Create a relational rule where deleting a category:
- Either cascades deletion of products
- OR sets product category to NULL (choose one case to implement)
4. Modify constraints without dropping the table.

---

### Tip:
Use `USER_CONSTRAINTS` and `USER_CONS_COLUMNS` views to inspect and validate your constraint definitions.