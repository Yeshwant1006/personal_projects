SELECT e.ssn, e.fname, d.dependant_name, d.relationship
FROM company.employee e
LEFT JOIN company.dependant d ON e.ssn = d.essn;

SELECT e.ssn, e.fname, d.dependant_name, d.relationship
FROM company.employee e
RIGHT JOIN company.dependant d ON e.ssn = d.essn;

SELECT e.ssn, e.fname
FROM company.employee as e
Inner join company.dependant as d ON e.ssn = d.essn;


SELECT e.ssn, e.fname
FROM company.employee as e
full join company.dependant as d ON e.ssn = d.essn;

create view company.works_on1
as select fname, lname, pname 
from company.employee, company.project, company.works_on
where ssn = essn and pno = pnumber;

select * from company.works_on1;

drop view works_on1;


create table flash.y(id int);
create table flash.n(id int);


CREATE PROCEDURE flash.insert_values(x INTEGER, y INTEGER)
LANGUAGE SQL
AS $$
INSERT INTO flash.y(id) VALUES (x);
INSERT INTO flash.n(id) VALUES (y);
$$;
call flash.insert_values(9, 10);

select * from flash.y;
select * from flash.n;



INSERT INTO company.department (dname, dnumber, mgr_ssn, mgr_start_date)
VALUES ('Department 9', 9, '4021031', '2022-05-11');


INSERT INTO company.employee (fname, mname, lname, ssn, bdate, address, sex, salary, super_ssn, dno) VALUES ('muzaqqir', 'hussian', 'watcher', '4021031', '2000-03-15', 'osmania', 'm', 42000, 9, 9);


CREATE TABLE company.audit (empid CHAR(9) NOT NULL, entrydate TIMESTAMP NOT NULL);

CREATE OR REPLACE FUNCTION auditlogfunc() RETURNS TRIGGER AS $example_table$
BEGIN
  INSERT INTO company.audit (empid, entrydate) VALUES (new.ssn, current_timestamp);
  RETURN new;
END;
$example_table$ LANGUAGE plpgsql;

CREATE TRIGGER example_trigger AFTER INSERT ON company.employee FOR EACH ROW EXECUTE FUNCTION auditlogfunc();

INSERT INTO company.employee (fname, mname, lname, ssn, bdate, address, sex, salary, super_ssn, dno) VALUES ('muzaqqir', 'hussian', 'watcher', '4021031', '2000-03-15', 'osmania', 'm', 42000, 9, 9);


grant select on flash.y to public;

grant insert on company.employee from public;

grant select on flash.y to public;

select * from flash.y;


begin;
delete from flash.y where id > '2';
rollback;

