use college;
select * from student;

-- to off safe mode so that we can make updates in db we use following command by the way safe mode is on so that we dont made any update that is not necessary that cause problem 

SET SQL_SAFE_UPDATES=0;
UPDATE student
SET grade="O"
WHERE grade="A";

select * from student;

-- grace marks to all 
update student
set marks=marks+1;

-- delete query
delete from student where marks <83;
