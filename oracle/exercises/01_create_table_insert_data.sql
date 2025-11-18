//emp
create table employee(
emp_id number,
emp_name varchar2(10),
designation varchar2(10),
salary number,
mgr number,
deptno number
);

insert into employee values(1,'aaa','salesman',7000,2,10);
insert into employee values(2,'bbb','manager',17000,3,10);
insert into employee values(3,'ccc','president',40000,NULL,30);
insert into employee values(4,'ddd','clerk',5000,5,20);
insert into employee values(5,'eee','manager',20000,3,20);

DELETE FROM employee
WHERE ROWID NOT IN (
  SELECT MIN(ROWID)
  FROM employee
  GROUP BY emp_name, designation, salary, mgr, deptno
);

select * from employee;

------------------------------------------
--dept
create table department (dept_no number, dept_name varchar2(10),location varchar2(10));
insert into department values(10,'sales','mumbai');
insert into department values(20,'hr','delhi');
insert into department values(30,'accounts','chennai');
insert into department values(40,'production','bengaluru');

select * from department;

-----------------------------------------

