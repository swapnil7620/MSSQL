
BEGIN TRY
      SELECT 500/5 AS 'DIVISON';
END TRY
BEGIN CATCH
      SELECT ERROR_MESSAGE() AS 'Error Message';
END CATCH

BEGIN TRY
      SELECT 500/0 AS 'DIVISON';
END TRY
BEGIN CATCH
      SELECT ERROR_MESSAGE() AS 'Error Message';
END CATCH

--TRY CATCH USING SOME FUNCTION
BEGIN TRY
      SELECT 500/0 AS 'DIVISON';
END TRY
BEGIN CATCH
      SELECT ERROR_MESSAGE() AS 'Error Message',ERROR_NUMBER() AS 'ERROR NUMBER',ERROR_LINE()
	  AS 'ERROR LINE',ERROR_PROCEDURE() AS 'ERROR PROCEDURE';
END CATCH



