use SSIS_LESSONS

create table Project2 (
	BusinessEntityID	int, 
	NationalIDNumber	int, 
	Login	varchar(50),
	JobTitle varchar(50),
	BirthDate	date, 
	MaritalStatus	varchar(50),
	Gender	varchar(50),
	HireDate	date,
	SalariedFlag	int,
	VacationHours	int,
	SickLeaveHours	int,
	CurrentFlag1 int
)


select * from Project2


select @@SERVERNAME

-----------------------------------------------------
create table Project2_2 (
	BusinessEntityID	int, 
	NationalIDNumber	int, 
	Login	varchar(50),
	JobTitle varchar(50),
	BirthDate	date, 
	MaritalStatus	varchar(50),
	Gender	varchar(50),
	HireDate	date,
	SalariedFlag	int,
	VacationHours	int,
	SickLeaveHours	int,
	CurrentFlag1 int
)


BULK INSERT Project2_2
FROM 'C:\SSIS_Lessons\Projects\Source2\data2.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK,
    CODEPAGE = '65001'
);

select * from Project2_2