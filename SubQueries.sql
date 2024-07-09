-- syntax

-- SELECT column(s)
-- FROM table_name
-- WHERE col_name operator
-- (subquery);

USE college;
CREATE TABLE Student1(
rollno int PRIMARY KEY,
name VARCHAR(50),
marks INT);

INSERT INTO Student1(rollno,name,marks)
values
(101,"anil",78),
(102,"bhumika",93),
(103,"chetan",85),
(104,"dhruv",96),
(105,"emanuel",92),
(106,"farah",82);

 alter table student1
 add column city varchar(50) default "delhi";

alter table student1
drop column city;

 select * from student1;

-- simple method to do aveage marks and name of student score above avg
select AVG(marks) from student1;

SELECT name,marks
from student1
where marks>87.667;

-- subquery method
SELECT name,marks
from student1
where marks>(select avg(marks) from student1);

-- names of all student with even rollno using subquery
SELECT name,rollno
from student1
where rollno in (select rollno from student1 where rollno % 2 = 0);

-- subqueries example of FROM
-- find max marks from student of delhi

select max(Marks) from (select * from student1 where city="delhi") as temp;

create view view1 as 
select rollno,marks,name from student1;

select * FROM VIEW1;