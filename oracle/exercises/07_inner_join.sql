select * from employee;
select * from department;
--in which location does employee aaa work
select location from department where dept_no in (
      select deptno from employee where emp_name = 'aaa'
);
--Inner Join

--list employees along with their locations

