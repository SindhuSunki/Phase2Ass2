Create database ExerciseDb
use ExerciseDb
Create Table Publisher
( PId int Primary key,
Publisher nvarchar(50) not null unique)
insert into Publisher values
(1,'Sam'),(2,'Ram')
Select *from Publisher

Create Table Category
(CId int primary key,
Category nvarchar(50) not null unique)
insert into Category Values
(101,'Bio'),(102,'Action'),(103,'Historical')
select *from Category

create Table Author
(AID int Primary key,
AuthorName nvarchar(50) not null unique)
insert into Author Values
(1,'R.K.Narayan'),(2,'Kiran Deshey'),(3,'ShakeSphere')
select*from Author

create Table Book
(BId  int primary key,
BName nvarchar(50) not null,
BPrice float ,
--Category int foreign key references Category
AId int foreign key references Author,
PId int foreign key references Publisher,
CId int foreign key references Category)
insert into Book values(1,'Mahavir',899.80,1,1,103),
(2,'Bible',798.90,1,2,103),
(3,'The Hobbit',999.90,2,1,101),
(4,'The Little Prince',678.098,2,2,102),
(5,'Harry Potter',3245,3,1,102)
select * from Book
drop table Book





