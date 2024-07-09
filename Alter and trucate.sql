use college;
select * from student;

ALTER table student
ADD column AGE INT NOT NULL DEFAULT 19;

ALTER table student
modify column AGE varchar(2) ;


insert into student(rollno,name,marks,grade,city,Stu_age) values(106 ,"simran",84,"b","ludhiana",100);

-- age cant added due to long values as we have dfine varchar(2) to modifiy this following query work

alter table student 
change column age stu_age int;

alter table student
drop column stu_age;

-- change table name
ALTER table student
rename to Stu;

ALTER table stu
rename to Student;

truncate table Student;