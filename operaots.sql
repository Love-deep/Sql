create database college;
use college;
create table student(
 rollno int primary key,
 name varchar(50),
 marks int not null,
 grade varchar(1),
 city varchar(50)
);


insert into student(rollno,name,marks,grade,city)
values
(101,"anil",78,"c","pune"),
(102,"gill",88,"b","pune"),
(103,"phill",90,"a","jaipur"),
(104,"sunil",82,"b","hoshiarpur"),
(105,"rohit",84,"b","goa");

select * from student;
select name,marks from student;

select name from student where city="pune";
select name from student where marks<80 or city="pune";

select * from student where marks between 85 and 90;
select * from student where city in ("pune","delhi");
select * from student where city not in ("pune","delhi");

select * from student order by city desc limit 3;