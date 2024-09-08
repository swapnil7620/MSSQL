
--to retrive data of perticular column and which avoid duplicates
select DISTINCT D_location from Deparment ORDER BY D_location;
select char(65) as alphabet;

select distinct *from Deparment order by D_location;

insert into Deparment values(8,'tester','Pune'),
                            (8,'tester','Pune');


--write a sql query to fetch all duplicate values from the table
/*select *,
row_number() over(partition by D_Name order by D_ID) AS
RN
FROM Deparment
order by D_id;
*/

--write a sql query to fetch all duplicate values from the table oly dulpicates
--not will give cause of order by
select D_id,D_Name from(
select *,
row_number() over(partition by D_Name order by D_ID) AS
RN
FROM Deparment_Backup
order by D_id) as x
where x.RN>1;



