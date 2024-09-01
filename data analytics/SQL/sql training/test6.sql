select * from yeshwanth.student where marks is not null 

use yeshwanth;
create trigger rishi
before insert
on yeshwanth.student
for each row
set new.marks = new.marks+6;

select * from student;

drop table final_marks;

show triggers in yeshwanth;

DROP TRIGGER IF EXISTS rishi;
DROP TRIGGER IF EXISTS calculate;

create trigger st
before insert
on yeshwanth.student
for each row
set new.marks = new.marks+6;


create trigger calculate
before insert
on yeshwanth.student
for each row
set new.marks = new.marks+100;

INSERT INTO student (fname, lname, address, city, marks) VALUES ('arshad', 'ahmed', 'begumpet', 'hyderabad', 86);
SELECT * FROM student;


create table final_marks(
total_marks int
);


create trigger cal
after insert
on yeshwanth.student
for each row
insert into final_marks values(total_marks)

INSERT INTO student (fname, lname, address, city, marks) VALUES ('shiva', 'shankar', 'jntu', 'hyderabad', 76);

select * from student;

drop table yeshwanth.emp;








