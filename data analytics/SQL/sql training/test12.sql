INSERT INTO company.employee (fname, mname, lname, ssn, bdate, address, sex, salary, super_ssn, dno) 
VALUES ('yeshwanth', 'kolthuru', 'tony', '1121031', '1998-10-06', 'badangpet', 'm', 40000, 7, 2);
INSERT INTO company.employee (fname, mname, lname, ssn, bdate, address, sex, salary, super_ssn, dno) VALUES ('manoj', 'mallepally', 'banner', '1021031', '1997-01-01', 'miyapur', 'm', 50000, 6, 1);
INSERT INTO company.employee (fname, mname, lname, ssn, bdate, address, sex, salary, super_ssn, dno) VALUES ('rigvedh', 'damerla', 'lang', '2021031', '1999-05-01', 'kphb', 'm', 56000, 5, 3);
INSERT INTO company.employee (fname, mname, lname, ssn, bdate, address, sex, salary, super_ssn, dno) VALUES ('ejaz', 'mohammed', 'steve', '3021031', '1997-03-10', 'bowenpally', 'm', 60000, 4, 4);
INSERT INTO company.employee (fname, mname, lname, ssn, bdate, address, sex, salary, super_ssn, dno) VALUES ('abhishek', 'goud', 'parker', '1521031', '2000-12-21', 'erragadda', 'm', 45000, 3, 5);
INSERT INTO company.employee (fname, mname, lname, ssn, bdate, address, sex, salary, super_ssn, dno) VALUES ('shiva', 'kaki', 'tchalla', '1721031', '1998-01-15', 'isnapur', 'm', 40000, 2, 6);
alter table company.department add foreign key(mgr_ssn) references company.employee(ssn);

select * from company.employee;


create table company.employee(
fname text not null,
mname char null,
lname text not null,
ssn char(9) not null primary key,
bdate date,
address text not null,
sex char null,
salary decimal (10,2) null,
super_ssn char(9) null,
dno int not null);
alter table company.department add foreign key(mgr_ssn) references company.employee(ssn);
alter table company.employee add foreign key(dno) references company.department(dnumber);
alter table company.department add foreign key(dnumber) references company.department(dnumber);
alter table company.project add foreign key(dnum) references company.department(dnumber);
alter table company.works_on add foreign key(pno) references company.project(pnumber);
alter table company.dependant add foreign key(essn) references company.employee(ssn);