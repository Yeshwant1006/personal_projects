INSERT INTO company.employee (fname, mname, lname, ssn, bdate, address, sex, salary, super_ssn, dno) 
VALUES ('yeshwanth', 'kolthuru', 'tony', '21031011', '1998-10-06', 'badangpet', 'm', 40000, 7, 2);
INSERT INTO company.employee (fname, mname, lname, ssn, bdate, address, sex, salary, super_ssn, dno) VALUES ('manoj', 'mallepally', 'banner', '21031010', '1997-01-01', 'miyapur', 'm', 50000, 6, 1);
INSERT INTO company.employee (fname, mname, lname, ssn, bdate, address, sex, salary, super_ssn, dno) VALUES ('rigvedh', 'damerla', 'lang', '21031002', '1999-05-01', 'kphb', 'm', 56000, 5, 3);
INSERT INTO company.employee (fname, mname, lname, ssn, bdate, address, sex, salary, super_ssn, dno) VALUES ('ejaz', 'mohammed', 'steve', '21031003', '1997-03-10', 'bowenpally', 'm', 60000, 4, 4);
INSERT INTO company.employee (fname, mname, lname, ssn, bdate, address, sex, salary, super_ssn, dno) VALUES ('abhishek', 'goud', 'parker', '21031015', '2000-12-21', 'erragadda', 'm', 45000, 3, 5);
INSERT INTO company.employee (fname, mname, lname, ssn, bdate, address, sex, salary, super_ssn, dno) VALUES ('shiva', 'kaki', 'tchalla', '21031017', '1998-01-15', 'isnapur', 'm', 40000, 2, 6);
insert into company.department(dname, dnumber, mgr_ssn, mgr_start_date) values('analyst', '2', '1121031', '2023-05-31');
insert into company.department(dname, dnumber, mgr_ssn, mgr_start_date) values('programmer', '1', '1021031', '2023-01-27');
insert into company.department(dname, dnumber, mgr_ssn, mgr_start_date) values('devops', '3', '2021031', '2022-08-21');
insert into company.department(dname, dnumber, mgr_ssn, mgr_start_date) values('developer', '4', '3021031', '2018-04-16');
insert into company.department(dname, dnumber, mgr_ssn, mgr_start_date) values('tester', '5', '1521031', '2023-05-21');
insert into company.department(dname, dnumber, mgr_ssn, mgr_start_date) values('manager', '6', '1721031', '2023-04-14');
insert into company.dependant(essn, dependant_name, sex, bdate, relationship) values('111222333','srinivasrao', 'm', '1975-06-29', 'son');
insert into company.dependant(essn, dependant_name, sex, bdate, relationship) values('444555666','sarojadevi', 'f', '1969-10-15', 'son');
insert into company.dependant(essn, dependant_name, sex, bdate, relationship) values('777888999','saraswathi', 'f', '1974-08-26', 'son');
insert into company.dependant(essn, dependant_name, sex, bdate, relationship) values('222333444','fayaz', 'm', '1998-06-21', 'son');
insert into company.dependant(essn, dependant_name, sex, bdate, relationship) values('555666777','srinivasgoud', 'm', '1973-09-27', 'son');
insert into company.dependant(essn, dependant_name, sex, bdate, relationship) values('888999101','subharayudu', 'm', '1983-06-29', 'son');
insert into company.dept_locations(dnumber, dlocation) values(2, 'gachibowli');
insert into company.dept_locations(dnumber, dlocation) values('1', 'hi-tech city');
insert into company.dept_locations(dnumber, dlocation) values('3', 'tolichowki');
insert into company.dept_locations(dnumber, dlocation) values('4', 'sr-nagar');
insert into company.dept_locations(dnumber, dlocation) values('5', 'uppal');
insert into company.dept_locations(dnumber, dlocation) values('6', 'patancheru');
insert into company.project(pname, pnumber, plocation, dnum) values('productA', '123', 'chaitanyapuri', '2');
insert into company.project(pname, pnumber, plocation, dnum) values('productB', '456', 'ameerpet', '1');
insert into company.project(pname, pnumber, plocation, dnum) values('productC', '789', 'jntuh', '3');
insert into company.project(pname, pnumber, plocation, dnum) values('productD', '101', 'ameerpet', '4');
insert into company.project(pname, pnumber, plocation, dnum) values('productE', '112', 'ameerpet', '5');
insert into company.project(pname, pnumber, plocation, dnum) values('productF', '131', 'jntuh', '6');
insert into company.works_on(essn, pno, hours) values('111222333', '123', '10');
insert into company.works_on(essn, pno, hours) values('444555666', '456', '11');
insert into company.works_on(essn, pno, hours) values('777888999', '789', '24');
insert into company.works_on(essn, pno, hours) values('222333444', '101', '5');
insert into company.works_on(essn, pno, hours) values('555666777', '112', '10');
insert into company.works_on(essn, pno, hours) values('888999101', '131', '36');
















select * from company.employee; 
select * from company.department;
select * from company.dependant; 
select * from company.dept_locations;
select * from company.project;
select * from company.works_on;




