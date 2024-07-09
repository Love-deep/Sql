use college;
select * from student;
select distinct city from student;
select max(marks) from student; 
select min(marks) from student; 
select avg(marks) from student; 
select count(rollno) from student;

select city,count(name)
from student group by city;

select city,name,count(name)
from student group by city,name;

select city,avg(marks) from student group by city order by avg(marks) desc;