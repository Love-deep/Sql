use college;
create table dept(
 id int primary key,
 name varchar(50)

);

insert into dept(id, name)
values
(101,"CSE"),
(102,"ECE"),
(103,"Civil");

drop table dept;
select * from dept;
set SQL_SAFE_UPDATES=0;

UPDATE dept
set id=100
where id=101;

delete from dept where id=100;
create table teacher(
 id int primary key,
 name varchar(50),
 dept_id int,
 foreign key(dept_id) references dept(id)
 on update cascade
 on delete cascade
);
drop table teacher;

insert into teacher(id, name,dept_id)
values
(101,"Hitesh",102),
(102,"Anurag",101),
(103,"Rajesh",101),
(104,"mandeep",103),
(105,"Neeta",102);

select * from teacher;