select * from employee;
select * from department;

--#GROUP-BY-CLAUSE
--how many emp works as manager
select count(*) from employee where designation='manager';
--how many emp present per designation 
--to return multiple result in aggregate we do group by clause
select count(*) from employee group by designation;
select designation, count(*) from employee group by designation;
--within each departmrnt how many emp are present
select deptno, count(*) from employee group by deptno;
--each department what is max salary
select deptno, max(salary) from employee group by deptno;
--each dept how many empl earn more than 10000
select designation , count(*) from employee where salary>10000 group by designation;


--#HAVING CLAUSE
--it is uded to specify condition on aggregate function it will always use along with group by clause

--which dept has atleast 2 emp
select deptno , count(*) from employee group by deptno having count(*)>=2;
--per job , how many emp are from dept no
select designation , count(*) from employee where deptno=10 group by designation;
--which job has more than one emp
select designation, count(*) from employee group by designation having count(*)>1;
--which job has more than one emp of dept 10
select designation, count(*) from employee where deptno=10 group by designation having count(*)>1;


--#SUB QUERIES
--how many emp work in mumbai
select count(*) from employee where deptno in (select dept_no from department where location='mumbai');
--in which dept name does employee aaa work
select dept_name from department where dept_no in (select deptno from employee where emp_name='aaa');
--what is the avg salary of emp in hr dept
select avg(salary) from employee where deptno in (select dept_no from department where dept_name='hr');

