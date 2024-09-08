CREATE TABLE Employee
(ID INT ,
EmpName VARCHAR(200),
EmpSalary DECIMAL(7,2),
Location VARCHAR(20)
);
INSERT INTO Employee VALUES
       (1001,'JAMES',20000,'ENG'),
       (1004,'JOE',40000,'ENG'),
	   (1003,'VIRAT',70000,'IND'),
	   (1002,'ROHIT',50000,'IND');


	   CREATE INDEX IND_EMP_Salary
	   ON EMPLOYEE(EmpSalary ASC);--ASC NOT WORKING
	    
	   select *from Employee;

	   SELECT *FROM Employee Where EmpSalary > 40000;--order by (EmpSalary)ASC;--OPTIONAL

	   --CLUSTERED INDEX

	  -- CREATE CLUSTERED INDEX C_INX_EmpName
	   --ON Employee(EmpName ASC);--USING SINGLE COLUMN

	   DROP  INDEX EMPLOYEE.C_INX_EmpName;

	   
	   CREATE CLUSTERED INDEX C_INX_ID_LOC
	   ON Employee(ID ASC,LOCATION DESC);-- COMPOSITE INDEX //USING MULTIPLE COLUMN(ID,LOACTION)
	  
          --NON CLUSTERED INDEX

	   CREATE NONCLUSTERED INDEX INX_EMP_ID
	   ON Employee(ID ASC);

	  SELECT *FROM Employee Where EmpSalary > 40000;



	  /*INDEXING USING UNIQUE CONSTRAINT*/


create table Deparment
(Did int identity,
DName varchar(20),
DLocation varchar(20)
);


INSERT INTO Deparment VALUES
         ('DEVELOPER','PUNE'),
		 ('MANAGER','MUMBAI'),
		 ('TESTER','PUNE');
INSERT INTO Deparment VALUES
         ('JDeveloper','PUNE','F');

		 --INSERT INTO Deparment VALUES
         --('DEVELOPER','MUMBAI','M');--Duplicate value are not allowed



		 CREATE UNIQUE NONCLUSTERED  INDEX NCUI_DNAME
		 ON Deparment(DName ASC);

		 ALTER TABLE Deparment
		 ADD CONSTRAINT UQC_DName
		 UNIQUE CLUSTERED(DName);

		 alter table Deparment
		 add gender varchar(2);

		 update Deparment set gender ='M' WHERE Did=1;
		 update Deparment set gender ='M' WHERE Did=2;
		 update Deparment set gender ='F' WHERE Did=3;

		 SELECT*FROM Deparment;


