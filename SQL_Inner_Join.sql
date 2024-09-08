use COMPANY;
create table Deparment
( D_id int ,
D_Name Varchar(20),
D_location Varchar(20)
);

Insert into Deparment Values
(8,'Developer','Pune');

 Insert into Deparment Values
(8,'Tester','Pune');

Insert into Deparment Values
(8,'Developer','Pune');

Insert into Deparment Values
(8,'Maneger','chalisgaon');

Select *from Deparment;

/*Inner Joint */ 

Select id,EmpName,Salary,Phone,D_Name,D_location 
From Employee Inner Join Deparment ON
Employee.P_ID =Deparment.D_id;

/*Inner join using Alising */
Select E.id,E.EmpName,E.Salary,E.Phone,D.D_Name,D.D_location 
From Employee  AS E Inner Join Deparment AS D ON
E.P_ID =D.D_id;







