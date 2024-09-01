create table department(
id int primary key,
name varchar(50) not null);

create table company(
	id int primary key,
	name varchar(100) not null,
	revenue int)

create table employee(
id int primary key,
name varchar(150) not null,
city varchar(150) not null,
department_id int not null,
salary int not null,
foreign key (department_id)references department(id))



INSERT INTO department
VALUES
  (1, 'IT'),
  (2, 'Management'),
  (3, 'IT'),
  (4, 'Support');
INSERT INTO company
VALUES
(1, 'IBM', 2000000),
(2, 'GOOGLE', 9000000),
(3, 'Apple', 10000000);
INSERT INTO employee
VALUES 
(1, 'David', 'London', 3, 80000),
(2, 'Emily', 'London', 3, 70000),
(3, 'Peter', 'Paris', 3, 60000),
(4, 'Ava', 'Paris', 3, 50000),
(5, 'Penny', 'London', 2, 110000),
(6, 'Jim', 'London', 2, 90000),
(7, 'Amy', 'Rome', 4, 30000),
(8, 'Cloe', 'London', 3, 110000);


select * from department
select * from company
select * from employee

update department
set name = 'management'
where id = 1;


delete from employee
where salary > 100000;


select name from company;

select * from company
where revenue < 5000000;


select * from company
order by revenue
limit 1;

select * from company
where not revenue >= 5000000;



select * from employee
where salary between 50000 and 70000;


select * from employee
where salary = 80000;


select * from employee
where salary <> 80000;



select name from employee
where salary > 70000
and department_id In(
select id from department
where name = 'IT')


select * from employee
where city like 'L%';

select distinct name from department;

select emp.name, dep.id, dep.name
from employee emp, department dep
where emp.department_id = dep.id
order by emp.name, dep.id;



select emp.name, dep.id, dep.name
from employee emp
Join department dep
on emp.department_id = dep.id
order by emp.name, dep.id;

select e1.name from employee e1
except
select e2.name from employee e2
where e2.salary >= 80000;


select * from employee 
where department_id in(
select department_id from employee
where name Like 'Peter')
and name not Like 'Peter';




