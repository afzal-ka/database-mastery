select * from employee;
select * from department;

select count(*) from employee where deptno=10;
select dept_no from department where location='mumbai';
--SUB QUERY
--sub query include inner query and outer query
--outer query: which result will be displayed to the user
--inner query: only for the condition purpose-not show to the user


----only use '==' if inner query only return 1 record

--1.how many employee work in mumbai
select count(*) from employee where deptno = (
                     select dept_no from department where location='mumbai'
);

--2.in which department name does employee aaa work
select dept_name from department where dept_no = (
                    select deptno from employee where emp_name = 'aaa'
);

--3. what is the avg salary of emp in hr department 
select avg(salary) from employee where deptno = (
                select dept_no from department where dept_name = 'hr'
);

select * from department;
update department set location = 'mumbai' where dept_no = 20;
--now dept no 10 and 20 locations are mumbai and if check how many emp works in mumbai there is more than one result
--so when innner queries will return more than one record use 'in' instead of '=='
--only use '==' if inner query only return 1 record
select count(*) from employee where deptno in (
                     select dept_no from department where location='mumbai'
); -- mumbai deptno : 10 and 20 ,deptno:10 have 2 employees and deptno:4 have 2 employees, total = 4 employees


--4.how many empoyees of sales department earn more than 1000
select count(*) from employee where deptno in (
                    select dept_no from department where dept_name = 'sales'
);

--5.display emp no and name of clearks in mumbai earning more than 4000
select emp_id , emp_name from employee where designation = 'clerk' and salary > 4000 and deptno  in (
                    select dept_no from department where location ='mumbai' 
);