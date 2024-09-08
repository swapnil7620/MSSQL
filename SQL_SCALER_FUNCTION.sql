
use COMPANY;
go
--To create a Scalar Function
CREATE FUNCTION SALARY(@name varchar(20))
RETURNS  DECIMAL
BEGIN
      DECLARE @SAL decimal;
	  SELECT @SAL =Salary from Employee
	  WHERE EmpName= @name;

	  RETURN @SAL
END
GO

--To call th function
SELECT DBO.SALARY('Harshal') as Harshal;
SELECT DBO.SALARY('Nishant') as Nishu;


