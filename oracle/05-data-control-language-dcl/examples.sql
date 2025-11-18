
------------------------------------------------------------
-- Topic 05: Data Control Language (DCL)
-- Examples demonstrating GRANT and REVOKE
------------------------------------------------------------

-- 1. Grant object privilege
GRANT SELECT ON employees TO user_hr;

-- 2. Grant multiple privileges
GRANT INSERT, UPDATE ON departments TO manager_role;

-- 3. Grant system privilege
GRANT CREATE SESSION TO trainee_user;

-- 4. Create and assign a role
CREATE ROLE sales_role;
GRANT SELECT, UPDATE ON sales TO sales_role;
GRANT sales_role TO user_sales;

-- 5. Revoke an object privilege
REVOKE UPDATE ON departments FROM manager_role;

-- 6. Revoke a system privilege
REVOKE CREATE SESSION FROM trainee_user;

------------------------------------------------------------
-- End of DCL Examples
------------------------------------------------------------
