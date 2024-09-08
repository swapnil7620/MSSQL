/* DML TRIGGER*/
/*
--CREATE A TRIGGER WHEN NEW EMPLOYEE IS ADD TO THE EMPLOYEE  TABLE
--DML TRIGGER 
USE COMPANY;
GO

CREATE TRIGGER TRI_MESSAGE
ON Employee
AFTER INSERT
AS
    BEGIN
	      PRINT 'Welcome to our company';
    END
GO
SELECT *FROM Employee;

INSERT INTO Employee VALUES
(7,'Shubham',30000,1234512345,10);-- this message will display = Welcome to our company

*/
/*
GO

CREATE TABLE Employee_Logs
(id int ,EmpName varchar(20),Emp_Salary decimal(7,2),
P_ID int,ModifyBy varchar(20),ModifyON date
);
GO

CREATE TRIGGER TRI_EMP_AFTER_INSERTED
ON Employee
AFTER INSERT
AS
 BEGIN
       INSERT INTO Employee_Logs
	   SELECT id,EmpName,Salary,P_ID,'Swapnil',GETDATE()
	   FROM INSERTED;--MAGIC TABLE INSERTED

 END;

 Insert into employee values(9,'sonu',40000,1234554321,10);
 select *from Employee_Logs;



 go

-- FOR UPDATE  USING TRIGGER

 CREATE TRIGGER TRI_EMP_AFTER_UPDATED
ON Employee
AFTER UPDATE-- for update trigger
AS
 BEGIN
       INSERT INTO Employee_Logs
	   SELECT id,EmpName,Salary,P_ID,'Swapnil',GETDATE()
	   FROM INSERTED;--MAGIC TABLE INSERTED

 END;

 UPDATE  Employee SET Salary=20000 , EmpName='Sonu' where EmpName='sonu';
 select *from Employee;



 GO*/
-- FOR DELETE USING TRIGGER


 /*
GO
CREATE TRIGGER  TRI_ALL_EMP_DML_OPERATION
ON Employee
AFTER INSERT,DELETE,UPDATE
AS
BEGIN 
      --INSERT
	  IF EXISTS(SELECT*FROM INSERTED) AND NOT EXISTS(SELECT*FROM DELETED)
            INSERT INTO Employee_Logs
	        select id,EmpName,Salary,P_ID,'swapnil',Getdate()
	        from INSERTED;


	   --UPDATE
	  ELSE IF EXISTS(SELECT*FROM INSERTED) AND EXISTS(SELECT*FROM DELETED)
	         INSERT INTO Employee_Logs
	         select id,EmpName,Salary,P_ID,'swapnil',Getdate()
	          from INSERTED;

	   --DELETED
	    ELSE IF EXISTS(SELECT*FROM DELETED) AND NOT EXISTS( SELECT*FROM INSERTED)
	         INSERT INTO Employee_Logs
	         select id,EmpName,Salary,P_ID,'swapnil',Getdate()
        	 from DELETED;
 
        ELSE
		  BEGIN
		       PRINT'NOTHING HAS CHANGED'
			   RETURN
           END

END

INSERT INTO Employee values(7,'Shubham',30000,1233456456,10);

update Employee set Salary=50000 where EmpName='Suyog';
SELECT*FROM Employee_Logs;

INSERT INTO Employee values(8,'Sonu',40000,1233456469,10);

delete from Employee where EmpName='sonu';
delete from Employee where EmpName='SHUBHAM';
select *from Employee_Logs;
*/


/* DDL TRIGGER*/
--Create a Trigger when new database is created in a Database
/*
CREATE TRIGGER TRI_ON_CREATE_TABLE
ON DATABASE
FOR CREATE_TABLE
AS
 BEGIN 
          PRINT 'New Table is Created Successfuly';
 END
 go

 CREATE TRIGGER TRI_ON_drop_TABLE
ON DATABASE
FOR DROP_TABLE
AS
 BEGIN 
          PRINT 'Table is Deleted Successfuly';
 END
 go

 CREATE TRIGGER TRI_ON_ALTER_TABLE
ON DATABASE
FOR ALTER_TABLE
AS
 BEGIN 
          PRINT 'Table is ALTER Successfuly';
 END
 

 Create table TEMP(ID INT, E_Name varchar(20));

 drop table TEMP;

 ALTER TABLE TEMP ADD DEPT INT;
 */
 --SELECT *FROM TEMP;


 
 