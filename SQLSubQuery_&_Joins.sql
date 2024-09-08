use Deparment;

CREATE TABLE Employee(
id int,
EmpName varchar(20) 
);

Alter Table Employee ADD Salary varchar(10); 
Alter Table Employee ADD Phone varchar(10) NULL;
Alter  Table Employee ADD P_ID INTEGER NOT NULL DEFAULT 8;

Insert into Employee values(1,'Nishant','300000','1234567890',10);
Insert into Employee values(2,'Harshal','400000','1234567890',20);
INSERT into Employee Values(3,'Rahul','20000','1234567890',30);
INSERT into Employee Values(4,'Bhushan','20000','2345678901',40);
INSERT into Employee Values(5,'Niraj','30000','1234567899',8);
INSERT into Employee Values(6,'Suyog','40000','1234567892',8);

SELECT *FROM Employee;


create table Deparment_INFO
( D_id int ,
D_Name Varchar(20),
D_location Varchar(20)
);

Insert into Deparment_INFO Values
(10,'Developer','Pune');

 Insert into Deparment_INFO Values
(20,'Tester','Pune');

Insert into Deparment_INFO Values

(30,'Developer','Pune');

Insert into Deparment_INFO Values
(8,'Maneger','chalisgaon');

Select *from Employee;
select *from Deparment_INFO;

/* Left Outer Joint*/

Select id,EmpName,Salary,Phone,D_Name,D_location
From Employee left outer join Deparment_INFO 
ON Employee.P_ID =Deparment_INFO.D_id;

/*RIGHT OUTER JOIN*/

Select id,EmpName,Salary,Phone,D_Name,D_location
From Employee RIGHT outer join Deparment_INFO 
ON Employee.P_ID =Deparment_INFO.D_id;

Select id,EmpName,Salary,Phone,D_Name,D_location
From Deparment_INFO RIGHT outer join  Employee
ON Employee.P_ID =Deparment_INFO.D_id;

/* USING ALIASING*/
Select E.id,E.EmpName,E.Salary,E.Phone,D.D_Name,D.D_location
From Employee  AS E RIGHT outer join Deparment_INFO AS D
ON E.P_ID =D.D_id;

Select E.id,E.EmpName,E.Salary,E.Phone,D.D_Name,D.D_location
From Employee AS E left outer join Deparment_INFO AS D
ON E.P_ID =D.D_id;

/* FULL OUTER JOIN*/
SELECT id,EmpName,Salary,Phone,D_Name,D_Location
From Employee Full outer join Deparment_Info
ON Employee.id = Deparment_INFO.D_id;

SELECT id,EmpName,Salary,Phone,D_Name,D_Location
From  Deparment_Info Full outer join Employee
ON Employee.id = Deparment_INFO.D_id;

update Deparment_INFO SET D_Name= 'Manager' where D_location='chalisgaon';

/* Subquery*/

/* Display Name ,Salary of Employee whose Salary is more (greater than)than Another Employee Salary("Nishant Salary")*/
SELECT EmpName ,Salary From Employee Where Salary> 
(Select Salary From Employee Where EmpName ='Rahul');

SELECT EmpName ,Salary From Employee Where Salary=
(Select Salary From Employee Where EmpName ='Rahul');

SELECT EmpName ,Salary From Employee Where Salary >
(Select Salary From Employee Where id =3);

SELECT EmpName ,Salary From Employee Where Salary IN
(Select Salary From Employee Where EmpName ='Rahul');


SELECT EmpName ,Salary From Employee Where Salary<
(Select Salary From Employee Where EmpName = 'Harshal');

/* Display Name ,Salary of Employee whose Salary is more (greater than)than Another Employee Salary
("Nishant Salary") And Deparment No is same as Nishant Deparment Number */


SELECT EmpName ,Salary From Employee Where Salary >
(Select Salary From Employee Where EmpName ='Niraj') AND
P_Id =(Select P_ID From Employee Where EmpName ='Niraj');

/*Display the Employee Information Whose Deaprment is located at Chalisgaon*/ 

Select EmpName,Salary,Phone From Employee WHERE P_ID =(Select D_id From Deparment_INFO
WHERE D_location='chalisgaon');

select * from Employee where P_Id=
(select D_id from Deparment_INFO where D_location ='chalisgaon');


use COMPANY;
 /* working with variable (DECLARE,SET ,SELECT)*/
 DECLARE @Name VARCHAR(50),@AGE INT,@LName VARCHAR (50)='Mahajan';
 SELECT @Name='swapnil',@AGE=25;
 SELECT @Name AS Name,@AGE AS Age ,@LName AS LName;

 SET  @Name ='OK';
 SELECT @Name,@Age;

 /* MATHAMATICAL Operation */
 DECLARE @NUMBER INT=40;
 SELECT @NUMBER +=10; 
 SELECT @NUMBER;

 /*Another syntax for Applying Mathmatical Operation*/

 DECLARE @NO INT=100;
 SET @NO = @NO-50
 SELECT @NO;

 SET @NO = @NO+50
 SELECT @NO;

 SET @NO = @NO*50
 SELECT @NO;

 SELECT *From Employee;


 DECLARE @Name VARCHAR(50),@Salary Decimal(7,2);
 SELECT @Name =EmpName ,@Salary=Salary  From Employee;
 Select @Name AS 'Name',@Salary AS 'Salary';









  