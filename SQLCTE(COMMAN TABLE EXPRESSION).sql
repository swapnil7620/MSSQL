/*USE EmployeeDB;
--using no parameter
--with used for CTE
WITH CTE_EMP_SALARY AS
( SELECT AVG(EmpSalary)as EmpSal from Employee_Info
)
select EmpSal from CTE_EMP_SALARY;
GO
*/
--SELECT EmpName from Employee_Info;


--SELECT *FROM Employee_Info;
--SELECT *FROM TABLE_USER_LOGIN;

/* WITH USING PARAMETER
WITH CTE_COUNT_EMP(Deptid,EmployeeCount) AS
( select Deptid, count(*) AS EmployeeCount from 
Employee_Info group by DeptId
 )
select USER_NAME ,EmployeeCount from 
TABLE_USER_LOGIN JOIN CTE_COUNT_EMP ON 
TABLE_USER_LOGIN.USER_ID=CTE_COUNT_EMP.EmployeeCount;
*/