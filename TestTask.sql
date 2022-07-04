create database ForHhRu
go

use ForHhRu
go


create table Products
(
	ProductId int primary key,
	ProductName nvarchar(100) null

)
go


create table Category
(
	CategoryId int primary key,
	CategoryName nvarchar(100) null
)
go


create table ProdCat
(
	NumOnOrder int primary key,
	CategoryId int,
	ProductId int
)
go

alter table ProdCat add foreign key (CategoryId) references Category(CategoryId)
go

alter table ProdCat add foreign key (ProductId) references Products(ProductId)
go


insert into Products
values
(1, '�������'),
(2, '���� ��� �����'),
(3,'����� ��� �����')
go

insert into Category
values
(1,'������� � ��������'),
(2,''),
(3,'�������'),
(4,'�����')
go


insert into ProdCat
values
(1,1,1),
(2,2,2),
(3,3,1),
(4,4,2),
(5,4,3)
go


create View Works
as
select pr.ProductName as [������������ ��������], ct.CategoryName as [������������ ��������� ��������] 
from Products pr inner join ProdCat pc on pr.ProductId = pc.ProductId inner join Category ct on pc.CategoryId = ct.CategoryId
go



select * from Works
go


