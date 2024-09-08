
--BEGIN AND END KEYWORD ( CONTAIN BLOCK OF STATEMENT )

use COMPANY;
GO

SELECT *FROM Employee;
GO--USE FOR END OF BATCH

BEGIN 
      DECLARE @NAME VARCHAR(20),@Salary INTEGER ,@PERSON_ID INTEGER=1;--BLOCK 1

	  Select @Name=EmpName,@Salary=Salary from Employee --BLOCK 2
	  Where id=@PERSON_ID;

	  Select @Name AS EmpName,@Salary as Salary;--BLOCK 3 
	  
END
GO--USE FOR END OF BATCH


BEGIN 
      DECLARE @NAME VARCHAR(20),@Salary INTEGER ,@PERSON_ID INTEGER=8;

	  Select @Name=EmpName,@Salary=Salary from Employee 
	  Where P_ID=@PERSON_ID;

	  Select @Name AS EmpName,@Salary as Salary; 
END
GO


BEGIN 
      DECLARE @NAME VARCHAR(20),@Salary INTEGER ,@PERSON_ID VARCHAR=2;

	  Select @Name=EmpName,@Salary=Salary from Employee 
	  Where P_ID=@PERSON_ID;

	  Select @Name AS EmpName,@Salary as Salary; 
	  BEGIN 
	    PRINT 'DEPARMENT ID : ' + @PERSON_ID;--JUST USED TO PRINT MESSAGE ;
      END
END
GO
/*IF ELSE STATEMENT*/
USE EmployeeDB;

BEGIN
DECLARE @Salary decimal(7,2);
SELECT @Salary =AVG(EmpSalary) FROM Employee_Info;
Select @Salary as Employee_Salary;

if @Salary>40000
  BEGIN
     PRINT'AVG SALARY IS GREATER THAN 25000';
  END

  ELSE
    BEGIN
         PRINT'AGE  IS NOT GREATER THAN GIVEN VALUE '
    END
END

/*WHILE LOOP*/ 


USE EmployeeDB;

select *from EmployeeDB.dbo.Employee_Info;



BEGIN
     WHILE (SELECT MIN(EmpSalary)from Employee_Info)<=90000
	 BEGIN
	      UPDATE Employee_Info SET EmpSalary=EmpSalary+20000 
		  PRINT'EMPLOYEE SALARY IS UPDATED';

		  SELECT *FROM Employee_Info;

		  IF(SELECT MIN(EmpSalary) from Employee_Info)>=90000
		  PRINT 'MINIMUM SALARY IS  GREATER TAHN OR EQUAL TO 900000';
		  BREAK;
    END
END


BEGIN
     WHILE (SELECT MAX(EmpSalary)from Employee_Info)>=90000
	 BEGIN
	      UPDATE Employee_Info SET EmpSalary=EmpSalary-20000 
		  PRINT'EMPLOYEE SALARY IS UPDATED';

		  SELECT *FROM Employee_Info;

		  IF(SELECT MAX(EmpSalary) from Employee_Info)<=90000
		  PRINT 'MINIMUM SALARY IS  GREATER TAHN OR EQUAL TO 900000';
		  BREAK;
    END
END
