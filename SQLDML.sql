CREATE DATABASE COMPANY;
USE COMPANY;
CREATE TABLE Employee(
id int,
EmpName varchar(20) 
);

Insert into Employee values(1,'Nishant');

Insert into Employee values(2,'Harshal');

INSERT into Employee Values(3,'Rahul','20000','1234567890',8);
INSERT into Employee Values(4,'Bhushan','20000','2345678901',8);
INSERT into Employee Values(5,'Niraj','30000','1234567899',8);
INSERT into Employee Values(6,'Suyog','40000','1234567892',8);


Select *from Employee;

Alter Table Employee ADD Salary varchar(10); 

Insert into Employee Salary('100000')

Alter Table Employee ADD Phone varchar(10) NULL;

Update Employee set  Salary ='10000' where EmpName='Nishant';

Update Employee set  Salary =10000 where EmpName='Harshal';

Update Employee set  phone =1234567890 where EmpName='Nishant';

Update Employee set  phone =1234567891 where EmpName='Harshal';

Update Employee set  phone =1234567890 , Salary ='20000'where EmpName='Nishant';
Update Employee set  phone =1234567891, Salary='20000' where EmpName='Nishant';

Alter  Table Employee ADD P_ID INTEGER NOT NULL DEFAULT 8;

/*if you want to use NOT NULL then  you need to use  Default also */

/*ALTER TABLE Employee ADD PROJECT_ID INTEGER NULL CONSTRAINT ABC_UNIQUE_KEY UNIQUE;*/
Select *from Employee;

CREATE TABLE Company_Info(
id int);
Select *from Company_Info;
Alter Table Company_Info ADD Revenue Decimal(10,2) null,
project_id integer Constraint p_ID PRIMARY KEY;
ALTER Table Company_Info ADD Salary INTEGER;

ALTER TABLE Company_Info DROP COLUMN Revenue;

SELECT *INTO Company_Info_backup FROM Company_Info;

SELECT *INTO Employee_backup FROM Employee;

Alter table Employee_backup drop column Salary,Phone;

Alter table Company_Info drop CONSTRAINT p_ID;/*WITH constraint*/


/*Alter table column data type*/

Alter Table Employee ALTER COLUMN EmpName char(20);


SELECT *FROM Employee;
/* Alising -: use for temporary  name (AS), AS IS NOT Necessary*/
SELECT Phone AS 'Phone Number'from	Employee;
SELECT Phone AS 'Phone Number', EmpName AS 'Employee Name' from	Employee;

