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








