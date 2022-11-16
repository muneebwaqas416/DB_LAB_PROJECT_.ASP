create database DB_LAB_Project

go

use DB_LAB_Project

create table maedical_Record
(
	Employee_ID int primary key not null,
	Employee_Name varchar(200),
	Employee_Birthdate date,
	Employee_Gender varchar(200)
)

use DB_LAB_Project

select *
from maedical_Record


Insert into maedical_Record
values(1,'Ali','2002-03-12','M'),
(2,'Muneeb','2002-03-12','M'),
(3,'Izzah','1998-02-03','F')
