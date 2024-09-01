use yeshwanth;
create table employee(
empid int not null auto_increment,
empfname varchar(20),
emplname varchar(20),
age int, emailid varchar(40),
phoneno bigint, address varchar(30),
primary key(empid)
); 
drop table yeshwanth.employee;
select * from employee; 

insert into employee(empfname, emplname, age, emailid, phoneno, address) values('yeshwanth', 'kolthuru', 25, 'yeshwanth.kolthuru@gmail.com', 8121586800, 'hyderabad');
insert into employee(empfname, emplname, age, emailid, phoneno, address) values('manoj', 'kumar', 28, 'manojkumar@gmail.com', 8885558802, 'gujarat');
insert into employee(empfname, emplname, age, emailid, phoneno, address) values('abhishek', 'goud', 23, 'abhishekgoud@gamil.com', 9490008345, 'goa');
insert into employee(empfname, emplname, age, emailid, phoneno, address) values('shiva', 'kaki', 25,'shivakaki@gmail.com', 8125483789, 'chennai');
insert into employee(empfname, emplname, age, emailid, phoneno, address) values('rigved', 'damerla',24 , 'ramachandrarigveddamerla@gmail.com', 9951104674, 'vijaywada');
insert into employee(empfname, emplname, age, emailid, phoneno, address) values('ejaz', 'mohammed', 26 , 'mohammedejaz@gmail.com', 9550239786, 'bihar');

create table project(
projectid int, empid int,
clientid int, projectname varchar(30),
projectstartdate int,
primary key(projectid)
);

drop table project;
insert into project(projectid, empid, clientid, projectname, projectstartdate) values(111, 1, 3, 'speech enhancement', 22);
insert into project(projectid, empid, clientid, projectname, projectstartdate) values(222, 2, 4, 'deep fake', 23);
insert into project(projectid, empid, clientid, projectname, projectstartdate) values(333, 3, 5, 'copd', 24);
insert into project(projectid, empid, clientid, projectname, projectstartdate) values(444, 4, 6, 'deep neural networks', 25);
insert into project(projectid, empid, clientid, projectname, projectstartdate) values(555, 5, 7, 'geographical exam centres', 26);
insert into project(projectid, empid, clientid, projectname, projectstartdate) values(666, 6, 8, 'cdml', 27);
insert into project(projectid, empid, clientid, projectname, projectstartdate) values(777, 7, 9, 'kcpd', 28);
insert into project(projectid, empid, clientid, projectname, projectstartdate) values(888, 8, 10, 'thenggutha', 29);

select * from employee;
select * from project;
select employee.empid, employee.empfname, employee.emplname, project.projectid, project.projectname
from employee
inner join project on employee.empid = project.empid;


select employee.empfname, employee.emplname, project.projectid, project.projectname
from employee
left join project on employee.empid = project.empid;

select employee.empfname, employee.emplname, project.projectid, project.projectname
from employee
right join project on employee.empid = project.empid;

(select employee.empfname, employee.emplname, project.projectid, project.projectname
from employee
left join project on employee.empid = project.empid
union
select employee.empfname, employee.emplname, project.projectid, project.projectname
from employee
right join project on employee.empid = project.empid);




