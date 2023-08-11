
create database ExerciseDb

use ExerciseDb

create table Publisher
(PId int primary key,
Publisher nvarchar(50) not null unique )

create table Category
(CId int primary key,
Category nvarchar(50) not null unique )

create table Author
(AId int primary key,
AuthorName nvarchar(50) not null unique )

create table Book
(BId int primary key,
BName nvarchar(50) not null,
BPrice float,
AId int foreign key references Author,
PId int foreign key references Publisher,
CId int foreign key references Category)

insert into Category values (1, 'Fiction'),(2, 'Science Fiction'),(3, 'Mystery')

select * from Category

insert into Publisher values (1, 'A'), (2, 'B'), (3, 'C')

select * from Publisher

insert into Author values (1, 'John'), (2, 'GCharles Dickens'), (3, 'Nickson')

select * from Author

insert into Book (BId, BName, BPrice, AId, PId, CId) values 
(1, 'Book 1', 19.99, 1, 1, 1),
(2, 'Book 2', 24.99, 2, 2, 2),
(3, 'Book 3', 14.99, 3, 1, 3),
(4, 'Book 4', 29.99, 1, 2, 1),
(5, 'Book 5', 9.99, 2, 1, 2),
(6, 'Book 6', 12.99, 3, 2, 3)
select BId, BName, BPrice, AuthorName Author, Publisher,
Category from Book b join Author a on b.AId = a.AId join Publisher p on b.PId = p.PId join Category c on b.CId = c.CId