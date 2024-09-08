create DataBase EmployeeDB;

use EmployeeDB;

Create Table Employee_Info
(
EmpId integer primary key,
EmpName varchar(50) Not Null,
EmpSalary decimal(10,2) Not Null,
Job varchar(50),
Phone varchar(50),
DeptId Integer
);

Insert into Employee_Info Values
(01,'Nishant',25000,'Jr Developer','1111111111',10);

Insert into Employee_Info Values
(02,'Mihir',25000,'Jr Developer','2222222222',10);

Insert into Employee_Info Values
(03,'Harshal',25000,'Jr Developer','3333333333',10);

Insert into Employee_Info Values
(04,'Shubham',25000,'Sr Developer','4444444444',10);

SELECT*FROM Employee_Info;
SELECT EmpName,EmpId ,EmpSalary From Employee_Info
where EmpSalary = 25000;
SELECT*FROM dbo.Employee_Info;

update Employee_Info Set EmpSalary = EmpSalary +10000 where EmpName = 'Shubham';

update Employee_Info Set EmpSalary = EmpSalary -10000 Where EmpName = 'Harshal';

update Employee_Info SET DeptId = 30 WHERE EmpName = 'Harshal';

update Employee_Info SET DeptId = 20 WHERE EmpName = 'Nishant';

/*CLAUSE  ORDER BY */

SELECT *from Employee_Info ORDER BY EmpSalary DESC;
SELECT *from Employee_Info ORDER BY EmpSalary ;
SELECT *from Employee_Info ORDER BY Job;
SELECT *from Employee_Info ORDER BY Job DESC;

Select EmpName From Employee_Info ORDER BY EmpName;
SELECT EmpName ,Phone,EmpSalary,Job From Employee_Info ORDER BY EmpName,EmpSalary,Job DESC;

/* CLAUSE WHERE */


SELECT *FROM Employee_Info WHERE DeptId = 10;
SELECT EmpName ,job FROM Employee_Info WHERE JOB='Jr Developer';
SELECT EmpName ,job,DeptId FROM Employee_Info WHERE DeptID='20';

/* clause  where with update */
UPDATE Employee_Info SET EmpSalary=EmpSalary+50000 Where EmpName ='Mihir';

/* AGGREGETE FUNCTION*/

SELECT COUNT(EmpId) From Employee_Info;
SELECT MAX(EmpSalary)  EmpName From Employee_info;
SELECT AVG(EmpSalary) From Employee_Info;
SELECT MIN(EmpSalary) From Employee_Info;
SELECT SUM(EmpSalary) From Employee_Info;

/*Numeric funtion */
SELECT ABS(-10)
SELECT CEILING(72.01)
SELECT FLOOR(76.20)
SELECT SIGN(10),SIGN(-10),SIGN(0);
SELECT SQUARE(6);
SELECT SQRT(9);
SELECT PI();
SELECT SIN(30),COS(90),TAN(90),COT(90);/*APPROXIMATE VALUE NOT ACCURATE*/
SELECT EXP(2)


/*String Function*/

Select EmpName, len(EmpName) from Employee_Info;
Select EmpName, UPPER(EmpName) from Employee_Info WHERE EmpName= 'Mihir';
Select EmpName, LOWER(EmpName) from Employee_Info WHERE EmpName= 'Mihir';
SELECT LTRIM('     ABCD');
SELECT RTRIM('ABCD     ');
SELECT SUBSTRING('MICROSOFT',1,5);
SELECT REPLACE('ABCD','AB','DCBA');
SELECT REPLICATE('SWAPNIL ',5);
  


/*GROUP BY CLAUSE*/
SELECT EmpId,sum(EmpSalary) from Employee_Info
GROUP BY EmpId;

SELECT DeptId ,SUM(EmpSalary) AS 'EmpSalary' FROM Employee_Info
where  DeptId=20 Group BY DeptId ;



SELECT EmpId,AVg(EmpSalary) AS 'AVG SALARY' from Employee_Info
GROUP BY EmpId;

SELECT EmpId,ROUND(AVG(EmpSalary),2) AS 'AVG SALARY' from Employee_Info
GROUP BY EmpId;

/*Having clause*/
SELECT DeptId ,SUM(EmpSalary) AS 'EmpSalary' FROM Employee_Info
Group BY DeptId HAVING sum(EmpSalary) >10000;

SELECT DeptId ,SUM(EmpSalary) AS 'EmpSalary' FROM Employee_Info
Group BY DeptId HAVING deptId=20;

/*TOP CLAUSE*/
SELECT TOP(2) EmpId FROM Employee_info Order BY EmpId;
SELECT TOP(2) EmpName ,EmpSalary FROM Employee_info Order BY EmpId;
SELECT TOP(2) EmpName ,EmpSalary FROM Employee_info Order BY EmpId DESC;
SELECT TOP(2) EmpId FROM Employee_info Order BY EmpId DESC;


SELECT TOP(2) EmpName ,EmpSalary FROM Employee_info WHERE EmpSalary BETWEEN 10000 AND 30000 ORDER BY
EmpSalary;










