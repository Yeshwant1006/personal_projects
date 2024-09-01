SELECT CAST('10' AS SIGNED) * 20 AS `cast_ver`;
select convert ('20', signed) * 20 as 'convert_ver';

SELECT CAST('a100' AS SIGNED) * 20 AS `try_cast_ver` LIMIT 0, 1000;
select convert('x100', signed) * 20 as 'try_convert_ver' limit 0, 1000;

select cast('a100!' as signed) * 20 as 'try_cast_ver' limit 0, 1000;


SELECT CASE 
         WHEN 1 = 1 THEN 'red'
         WHEN 1 = 2 THEN 'green'
         WHEN 1 = 3 THEN 'blue'
         WHEN 1 = 4 THEN 'yellow'
         WHEN 1 = 5 THEN 'purple'
         ELSE NULL 
       END AS chosen_value;
       
select iif(1 > 10, 'true', 'false');

select case 
when 21 < 10 then 'true' else 'false' end as result; 

SELECT 
  ABS(-10) AS 'abs', 
  RAND() AS 'rand', 
  EXP(4) AS 'exp', 
  FLOOR(4.56) AS 'floor', 
  CEILING(4.33) AS 'ceilng', 
  SIGN(-8) AS 'sign', 
  SQRT(2.56) AS 'sqrt', 
  power(4,2) AS 'square', 
  POWER(2, 3) AS 'power', 
  ROUND(2.56, 2) AS 'round' ;
  
  
  select * from yeshwanth.student;
  select avg (distinct marks) from yeshwanth.student
  
  select * from yeshwanth.employee;
select avg (age) from yeshwanth.employee   

select * from yeshwanth.employee;
select count(*) from yeshwanth.employee where address = 'vijaywada'



SELECT MAX(age) FROM yeshwanth.employee;

SELECT * FROM yeshwanth.employee;
SELECT MIN(address) AS location FROM yeshwanth.employee;

SELECT REPLACE('abcdefghicde', 'cde', 'xxx') AS 'replace', SUBSTRING('abcdef', 2, 3) AS 'substr', LEFT('abcdefg', 2) AS 'left', RIGHT('abcdefg', 2) AS 'right';

SET @d = '2011-10-01';
SELECT FORMAT(@d, 'd', 'en-us') AS 'us english', FORMAT(@d, 'd', 'en-gb') AS 'great britain english', FORMAT(@d, 'd', 'de-de') AS 'german';

select reverse('yeshwanth');
select ltrim('   abc');
select rtrim('   abc   ');
select trim('   abc    ');
select lower('ABC');
select upper('abc');
use yeshwanth;
SELECT NOW() as 'sysdatetime',
       CURRENT_TIMESTAMP() as 'timestamp',
       YEAR('2017-12-12') as 'datepart',
       TIMESTAMPDIFF(MONTH, '2015-12-31', '2016-10-23') as 'datediff',
       DATE_ADD('2015-12-31', INTERVAL 2 MONTH) as 'dateadd';





  



