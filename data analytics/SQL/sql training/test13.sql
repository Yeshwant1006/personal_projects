select * from company.employee;
select * from company.works_on;
select * from company.project;
select * from company.department;
select * from company.dependant;
update company.employee
set salary = '48000'
where ssn = '1121031';

select fname, lname, address
from company.employee
where dno = '6';


select pnumber, dnum, fname, address, bdate
from company.project, company.department, company.employee
where dnum = dnumber and mgr_ssn = ssn and plocation = 'jntuh';

select E.fname, E.lname, S.fname, S.lname
from company.employee as E, company.employee as S
where E.super_ssn = S.ssn;

select E.fname, E.lname
from company.employee as E;


select distinct salary
from company.employee;

select ssn, dname
from company.department, company.employee;

select * from company.employee, company.department
where dname = 'analyst' and dno = dnumber;

(select distinct pnumber
from company.project, company.department, company.employee
where dnum = dnumber and mgr_ssn = ssn and lname = 'tony')
union
(select distinct pnumber
from company.project, company.works_on, company.employee
where pnumber = pno and essn = ssn and lname = 'tony');

select fname, lname
from company.employee
where exists(select * from company.dependant where ssn = essn)
and exists(select * from company.department where ssn = mgr_ssn);


select ssn,fname
from company.employee
where address like '%badangpet%';

select ssn, fname
from company.employee
where fname like '_____';

select * from company.employee
where(salary between 40000 and 50000);

select E.fname, E.lname, 1.2*E.salary as increased_sal
from company.employee as E, company.works_on as W, company.project as P
where E.ssn = W.essn and W.pno = P.pnumber and P.pname = 'productB';

select * from company.employee where super_ssn is not null;

select sum(salary), min(salary), max(salary), count(distinct salary) from company.employee;

select D.dname, E.lname, E.fname, P.pname
from company.department as D, company.employee as E, company.works_on as W, company.project as P
where D.dnumber = E.dno and E.ssn = W.essn and W.pno = P.pnumber order by D.dname, E.lname, E.fname;

select * from company.employee order by salary desc;

select dno, count(*) from company.employee group by dno;
