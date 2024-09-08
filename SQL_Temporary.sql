USE SAMPLE;
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


INSERT INTO Employee values(10,'Vaibhav',