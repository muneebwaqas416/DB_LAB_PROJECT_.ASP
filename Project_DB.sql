create database Database_Project

use Database_Project

create table soldier(
soldierID varchar(30) primary key check(soldierID like 'SD%'),
username varchar(30) not null,
password varchar(30) not null,
firstName varchar(30)not null,
lastName varchar(30)not null,
cnic varchar(30)not null,
dateOfBirth Date not null,
gender char not null,
address varchar(30)not null,
phoneNumber bigint not null,
rating float not null,
check(rating <= 10.0 and rating >= 0.0),
check(gender = 'M' or gender = 'F')
)

select * 
from soldier

insert into soldier
values('SD1','123','12345678','Junaid','Ahmed','35202-7723451-1','2022-08-30','M','123-Fasial Town ','09876543210',7),
('SD2','456','12345678','Hamza','Ahmed','35202-7723451-1','2022-08-30','M','123-Fasial Town ','09876543210',7),
('SD3','789','12345678','Azlan','Khan','35202-7723451-1','2022-08-30','M','123-Fasial Town ','09876543210',7)


create table captain(
captainID varchar(30) primary key check(captainID like 'CP%'),
username varchar(30) not null,
password varchar(30) not null,
firstName varchar(30) not null,
lastName varchar(30) not null,
cnic varchar(30) not null,
dateOfBirth Date not null,
gender char not null,
address varchar(30) not null,
phoneNumber bigint not null,
rating float not null,
check(rating <= 10.0 and rating >= 0.0),
check(gender = 'M' or gender = 'F')
)

insert into captain
values('CP1','123','12345678','Junaid','Ahmed','35202-7723451-1','2022-08-30','M','123-Fasial Town ','09876543210',7)

select *
from captain
where captainID = 'CP1'

create table general(
generalID varchar(30) primary key check(generalID like 'GN%'),
username varchar(30)not null,
password varchar(30)not null,
firstName varchar(30)not null,
lastName varchar(30)not null,
cnic varchar(30)not null,
dateOfBirth Date not null,
gender char not null,
address varchar(30) not null,
phoneNumber bigint not null,
rating float not null,
check(rating <= 10.0 and rating >= 0.0),
check(gender = 'M' or gender = 'F')
)

create table company(
companyID varchar(30) primary key check(companyID like 'COM%'),
name varchar(30) not null,
location varchar(30) not null
)

create table weapon(
weaponID varchar(30) Primary key check(weaponID like 'WP%'),
name varchar(30)not null,
type varchar(30)not null,
price float not null,
availability varchar(30) not null,
companyID varchar(30) foreign key references company(companyID),
check (availability = 'available' or availability = 'not available')
)

create table MillitartEquipment(
EquipmentID varchar(30) Primary key check(EquipmentID like 'EQ%'),
name varchar(30) not null,
type varchar(30)not null,
price float not null,
availability varchar(30) not null,
companyID varchar(30) foreign key references company(companyID),
check (availability = 'available' or availability = 'not available')
)

create table meeting(
soldierID varchar(30) foreign key references soldier(soldierID),
captainID varchar(30) foreign key references captain(captainID),
generalID varchar(30) foreign key references general(generalID),
meetingAgenda varchar(30) not null
)

alter table meeting
add  date_1 date;

select *
from meeting




create table Contracts
(
generalID varchar(30) foreign key references general(generalID),
companyID varchar(30) foreign key references company(companyID),
yearsofcontract int not null,
)

create table NewlyRecruit(
NewlyRecruitID varchar(30) Primary key check(NewlyRecruitID like 'NR%'),
username varchar(30) not null,
password varchar(30) not null,
firstName varchar(30) not null,
lastName varchar(30) not null,
cnic varchar(30) not null,
dateOfBirth Date not null,
gender char not null,
address varchar(30) not null,
phoneNumber bigint not null,
overallPhysique int not null,
Performance int not null,
)

create table LeaveApplication(
LeaveID varchar(30) Primary key check(LeaveID like 'L%'),
soldierID varchar(30) foreign key references soldier(soldierID),
captainID varchar(30) foreign key references captain(captainID),
ReasonForLeave varchar(30) not null,
submittedAt date not null,
reviewdON date not null,
status varchar(30) check (status = 'Accepted' or status = 'Rejected'),
)

create table SoldierFitness(
soldierID varchar(30) foreign key references soldier(soldierID),
BleepScore int not null,
Remarks varchar(30) not null,
)

insert into SoldierFitness
values('SD1',15,'Poor Health'),
('SD2',21,'Satisfactory Health'),
('SD1',25,'Good Health'),
('SD1',15,'Poor Health')




create table NewlyRecruitFitness(
NewlyRecruitID varchar(30) foreign key references NewlyRecruit(NewlyRecruitID),
BleepScore int not null,
Remarks varchar(30) not null,
)

