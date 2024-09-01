select * from yeshwanth.employee_data;

select SALARY from yeshwanth.employee_data;

select distinct JOB_ID from yeshwanth.employee_data;

select distinct FIRST_NAME, LAST_NAME from yeshwanth.employee_data;

select * from yeshwanth.employee_data where JOB_ID in ('SH_CLERK');

select * from yeshwanth.employee_data where JOB_ID not in ('ST_CLERK');

SELECT * FROM yeshwanth.employee_data WHERE HIRE_DATE > '2005-01-01';

select count(SALARY) FROM yeshwanth.employee_data where JOB_ID in ('ST_CLERK');

select * from yeshwanth.employee_data where FIRST_NAME = 'shelley' and LAST_NAME = 'higgins';

select * from yeshwanth.employee_data where(1.0* 'SALARY') > 100;

select * from yeshwanth.employee_data where SALARY > 3500;

SELECT e.FIRST_NAME, e.LAST_NAME, e.SALARY 
FROM yeshwanth.employee_data e 
WHERE HIRE_DATE > '2007-01-01';

select * from yeshwanth.employee_data where HIRE_DATE = '02-06-2007';

select * from yeshwanth.employee_data where SALARY between 10000 and 15000; 

