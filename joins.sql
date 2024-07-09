use college;
select * from student;

alter table student
drop column marks;

alter table student
drop column grade;

insert into student(stu_id,name)
values
(101,"adam"),
(102,"eve"),
(103,"raman");

alter table student
drop column city;

alter table student
change column rollno stu_id int;

create table course(
stu_id int primary key,
course varchar(50));

insert into course(stu_id,course)
values
(102,"english"),
(105,"math"),
(103,"science"),
(107,"computer");

select * from course;

select * from student
Inner Join course
on student.stu_id=course.stu_id;

select * from student as s
left Join course as c
on s.stu_id=c.stu_id;

select * from student as s
right Join course as c
on s.stu_id=c.stu_id;

select * from student as s
left Join course as c
on s.stu_id=c.stu_id
union
select * from student as s
right Join course as c
on s.stu_id=c.stu_id;

-- exclusive left join gives on left side not include common of right 
select * from student as s
left Join course as c
on s.stu_id=c.stu_id
where c.stu_id is null;

select * from student as s
right Join course as c
on s.stu_id=c.stu_id
where s.stu_id is null;

select * from student as s
left Join course as c
on s.stu_id=c.stu_id
where c.stu_id is null
union
select * from student as s
right Join course as c
on s.stu_id=c.stu_id
where s.stu_id is null;