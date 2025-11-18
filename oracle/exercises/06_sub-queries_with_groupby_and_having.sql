select * from employee;
select * from department;
--Subqueries with Group By and Having clause

--1. per job how many employees are present in mumbai
select designation, count(*) from employee where deptno in (
               select dept_no from department where location = 'mumbai'
) group by designation;


--2.  per job how many employees of sales department earn more than 10000
select designation, count(*) from employee where salary>10000 and deptno in (
               select dept_no from department where dept_name = 'sales'
) group by designation;


--3. list jobs in ascending order of no of employees
select designation , count(*) from employee group by designation order by 2; --order by column position or count

--4. in the ascending order of employees list jobs which atleast have 2 employees from delhi
select designation , count(*) from employee where deptno in (
         select dept_no from department where location = 'mumbai'
)
group by designation having count(*)>=2 order by 2;
              



