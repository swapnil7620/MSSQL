
--Table Function --Inline Table value function
CREATE FUNCTION GETALL_INFO_EMP(@Name varchar(20))
RETURNS TABLE

AS 
RETURN
      SELECT *FROM Employee WHERE EmpName=@Name;

GO
	  select *FROM GETALL_INFO_EMP('Nishant');
	  select *FROM dbo.GETALL_INFO_EMP('Nishant');
GO

 SELECT *FROM GETALL_INFO_EMP('Nishant');




 go
--multi  Table valued function 
CREATE FUNCTION  Show_EmpDetails(@E_id int)
RETURNS @RESULT Table
(ID int,EmpName CHAR(20),SALARY varchar(10),PHONE VARCHAR(10),P_ID INT)
AS
  
   BEGIN
             INSERT INTO @RESULT
             SELECT *FROM Employee Where ID=@E_id;
		     RETURN
   END;
  GO 

  SELECT *FROM (2);



GO
  CREATE FUNCTION EmpDetails44(@E_id int)
RETURNS @RESULT Table
(ID int,EmpName VARCHAR(20),SALARY DECIMAL(7,2),PHONE VARCHAR(10),P_ID INT)--can change data type
AS
  
   BEGIN
             INSERT INTO @RESULT
             SELECT *FROM Employee Where ID=@E_id;
		     RETURN
   END;
  GO 

  select*from EmpDetails44(5);




