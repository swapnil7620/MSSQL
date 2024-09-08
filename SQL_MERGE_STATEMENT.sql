/*CREATE DATABASE AIRLINE;--SOURCE TABLE
USE AIRLINE;

CREATE TABLE Flight_Passengers
(FlightId int identity,
FirstName varchar(20) NOT NULL,
FlightCode varchar(20) NOT NULL,
Flight_Date Date NOT NULL,
SEAT_N0 VARCHAR(20) NOT NULL
);

INSERT INTO Flight_Passengers
VALUES('VIRAT','SQL2023',GETDATE(),'A1'),
      ('SMITH','SQL2023',GETDATE(),'A2'),
      ('KANE','SQL2023',GETDATE(),'B1'),
      ('JOE','SQL2023',GETDATE(),'B2');


CREATE TABLE Flight_Checkin
(FirstName varchar(20) NOT NULL,
FlightCode varchar(20) NOT NULL,
Flight_Date Date NOT NULL,
SEAT_N0 VARCHAR(20) NOT NULL
);


INSERT INTO Flight_Checkin--TARGET TABLE
VALUES('VIRAT','SQL2023',GETDATE(),'A1'),
      ('SMITH','SQL2023',GETDATE(),'A2'),
      ('KANE','SQL2023',GETDATE(),'B10'),
      ('JOE','SQL2023',GETDATE(),'B20');


	  SELECT*FROM Flight_Passengers;
	  select *from Flight_Checkin;


MERGE Flight_Passengers AS F  --TARGET TABLE
USING Flight_Checkin AS FC  --SOURCE TABLE
ON F.FirstName=FC.FirstName
AND F.FlightCode=FC.FlightCode
AND F.Flight_Date=FC.Flight_Date
WHEN MATCHED 
    THEN UPDATE SET F.SEAT_N0 =FC.SEAT_N0 
	  WHEN NOT MATCHED  BY TARGET
	     THEN INSERT(FirstName,FlightCode,Flight_Date,SEAT_N0)--TARGET TABLE FROM SOURCE TABLE
	        VALUES(FirstName,FlightCode,Flight_Date,SEAT_N0)--SOURCE TABLE REFERENCE TO TARGET ATBLE
	          WHEN NOT MATCHED BY SOURCE
			  	 THEN DELETE;
				 */
      -- SELECT*FROM Flight_Passengers;
	  --select *from Flight_Checkin;

/*
INSERT INTO Flight_Passengers
VALUES('ROHIT','SQL2023',GETDATE(),'A20');

UPDATE  Flight_Checkin SET SEAT_N0='A20' WHERE FirstName='Rohit'; 

INSERT INTO Flight_Checkin
VALUES('ROHIT','SQL2023',GETDATE(),'A1');
*/


/*INSERT INTO Flight_Checkin
VALUES('Dhoni','SQL2023',GETDATE(),'d10');

update Flight_Checkin set SEAT_N0='D10' where FirstName='Dhoni';
*/