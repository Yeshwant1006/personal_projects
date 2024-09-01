use yeshwanth;
select *  from student;

select fname
from student
where address = 'badangpet'



SELECT COUNT(studentid) FROM yeshwanth.student;
SELECT AVG(studentid) FROM yeshwanth.student;
SELECT SUM(marks) FROM yeshwanth.student;
SELECT lname, fname, max(marks) FROM yeshwanth.student group by fname, lname;
SELECT lname, fname, min(marks) FROM yeshwanth.student group by fname, lname;





select count(studentid), city from yeshwanth.student group by city;
select fname, sum(marks) from yeshwanth.student group by fname having sum(marks)<80;
select count(studentid), city from yeshwanth.student group by city order by city asc;
select fname, lname from yeshwanth.student where marks is null;
select fname, lname from yeshwanth.student where marks is not null;


update student set fname = 'muzaqqir', lname = 'hussian', marks = 90 where studentid = 25;

select * from yeshwanth.student;

delete from yeshwanth.student where studentid = 21031011 and address = 'badangpet';

select studentid, fname, lname from yeshwanth.student where address in('kukatpally', 'KPHB') 


select studentid, fname, lname from yeshwanth.student where address not in('erragadda', 'bowenpally')

select studentid, fname, lname from yeshwanth.student where marks < 80; 


select studentid as id from yeshwanth.student;

select S.fname, S.lname from yeshwanth.student as S;

select * from yeshwanth.student where fname like "m%" 

select * from yeshwanth.student;














