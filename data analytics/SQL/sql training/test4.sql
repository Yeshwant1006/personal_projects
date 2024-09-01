drop database yesh;

create database yeshwanth;

drop database yeshwanth;
USE yeshwanth;
create table emp(
id int not null auto_increment,
ename varchar(20),
address varchar(30),
primary key(id)
);

create table student(
studentid int not null auto_increment,
fname varchar(20),
lname varchar(20),
address varchar(30),
city varchar(15),
marks int,
primary key(studentid)
);
select * from student;