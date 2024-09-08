

--copy from google--for understanding
/*CREATE VIEW StudentNames AS
SELECT S_ID, NAME
FROM StudentDetails
ORDER BY NAME; 

SELECT * FROM StudentNames;
*/

--Need to check
/*The SELECT statement which is used to create the view should 
not include GROUP BY clause or ORDER BY clause.
The SELECT statement should not have the DISTINCT keyword.
The View should have all NOT NULL values.
The view should not be created using nested queries or complex queries.
The view should be created from a single table. If the view is created using multiple tables then we will not be allowed to update the view.
*/