select * from student;

--#RETRIEVING
select sname from student;
select div from student;

--#FILTERING
select * from student where div='A';
select * from student where div='A' and age=11;
select * from student where div='A' or age=11;
select * from student where age >= 8 and age<= 12;
select * from student where age between 8 and 12;
select * from student where sname='abc' and sname='xyz'; --it gives empty result 
select * from student where sname='abc' or sname='xyz'; 

select * from student where marks = null; --it gives empty result. this is not the right way to get the null result
--any column have 'null' record to represent that the value is not applicable
--in order to compare 'null' value instead of using equality operator there is a 'is' operator.
select * from student where marks is null;
select * from student where marks is not null;

--#EXPRESSIONS
-- _ -> match exactly one character
-- % -> 0 or more character
select * from student where sname like 'a_c';


--name start with a letter 'a'
select * from student where sname like 'a%';
--name container 'a'
select * from student where sname like '%a%';
--name which second character is 'b'
select * from student where sname like '_b%';
--student whose names contains '_'
select * from student where sname like '%\_%' escape '\';
--which are different division
select distinct div from student; -- distinct for distinct/unique value of any column


--#SORTING
--ORDER BY CLAUSE
--asc is default value

--arrange student in inc order of their age
select * from student order by age;
--arrange student in desc order of their age
select * from student order by age desc;

-- whenever query include both 'where' and 'order' then order by clause always goes to specified at the end.
-- not only with the where if the recorde is sorted then order by clause always be at the end . bcz query get some result then only after sorting.

--name and percentage of all student
select sname , marks*2 from student;

--#ALIAS -> temp name that are displaying only for query result purpose
--just specify alias name after the expression
--if want to include space then it include in double quates "student name"
select sname, marks*2 percentage from student;
select rollno, sname, age, marks*2 percentage,div from student;
select s.*, marks*2 as percentage from student s;

--get name an percentage of  all student who have scored more than 60%
select sname, marks*2 percentage from student where marks*2>60;

-- executing of select query : from --> where --> select

--get name and % of all student who have scored more than 60% in desc order of percentage
select s.*, marks*2 percentage from student s where marks*2 > 60 order by percentage desc; 
--from --> where --> select --> order by

--#AGGREGATE FUNCTION
--MAX, MIN, AVG, SUM, COUNT
--this function calculate result and return a single value.

--max student age
select avg(marks) from student;
select sum(marks)/count(marks) from student;
--count
select count(*) from student;
select count(*) from student where age between 8 and 12;
select count(distinct div) from student;

