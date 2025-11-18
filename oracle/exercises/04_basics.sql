
--SQL Querying – SELECT, Filtering, Sorting & Joins

--1. The SELECT Statement(The SELECT statement retrieves data from one or more tables.)
select emp_id, emp_name from employee;
select * from employee;

--2. Column Aliases & Expressions(You can rename columns or perform operations directly in the query.)
--Oracle allows basic arithmetic: +, -, *, /.
--AS is optional; you can just use a space: salary "Monthly Salary".
select emp_id as "employee id", emp_name as "employee name" from employee;
select emp_id  "employee id" , emp_name  "employee name", salary  "monthly salary", salary*12  "annual salary" from employee;

--3. Filtering Data with WHERE(WHERE is used to filter rows based on a condition.)
select emp_id, emp_name , salary  from employee where salary >25000;
select emp_id, emp_name , salary  from employee where deptno in (10,20)and salary between 10000 and 50000;

--4. Sorting Results — ORDER BY(To sort results in ascending or descending order.)
--Default sorting is ASC (ascending).
select emp_id, emp_name, salary from employee order by salary desc;

--5. Removing Duplicates — DISTINCT(Sometimes the same data repeats; use DISTINCT to show unique values.)
select emp_id, deptno from employee;
select distinct deptno from employee;

--6. Limiting Rows (FETCH, ROWNUM) (To restrict the number of rows returned.)
select * from employee order by salary desc fetch first 3 rows only;
select * from employee where rownum <=4 order by salary desc;

--7. Filtering with Pattern Matching — LIKE
--%	Matches zero or more characters
--_ Matches exactly one character
select * from employee where designation like 'a%';
select * from employee where designation like '%n';
select * from employee where designation like '_a%';

--8. Aggregate Functions (Aggregate functions summarize data (used with or without GROUP BY).)
select count(*) from employee;
select count(*) as "total employee", avg(salary) as "average salary" , max(salary) as "maximum salary" from employee;

--9. Grouping Data — GROUP BY & HAVING(Used to group results based on one or more columns.)
--Only columns used in GROUP BY or aggregates are allowed.
--You can’t use SELECT * with GROUP BY unless all selected columns are included in the GROUP BY clause or are part of aggregate functions.
--The HAVING clause must include a condition, not just an aggregate function call.
--In standard SQL, when you use GROUP BY, the SELECT list can only contain:
--Columns used in the GROUP BY clause, and/or

Aggregate functions (AVG(), SUM(), COUNT(), etc.)
select deptno , avg(salary) as "average salary" from employee group by deptno;
select deptno , avg(salary) as "average salary" from employee group by deptno having avg(salary)>20000;


