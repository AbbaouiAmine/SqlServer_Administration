create database BD
on primary (
name=data1,
filename='D:\Microsoft SQL Server\Databases\DBfiles\data1.mdf',
size=4MB,
maxsize=50MB,
filegrowth=1MB
),
(
name=data2,
filename='D:\Microsoft SQL Server\Databases\DBfiles\data2.ndf',
size=1MB,
maxsize=50MB,
filegrowth=1MB
)
,
filegroup Client(
name=data3,
filename='D:\Microsoft SQL Server\Databases\DBfiles\data3.ndf',
size=1MB,
maxsize=50MB,
filegrowth=1MB
)
,
filegroup Produit(
name=data4,
filename='D:\Microsoft SQL Server\Databases\DBfiles\data4.ndf',
size=1MB,
maxsize=50MB,
filegrowth=1MB
),
(
name=data5,
filename='D:\Microsoft SQL Server\Databases\DBfiles\data5.ndf',
size=1MB,
maxsize=50MB,
filegrowth=1MB
)
log on
(
name=log1,
filename='D:\Microsoft SQL Server\Databases\DBfiles\log1.ldf',
size =10MB,
maxsize= 100MB, 
filegrowth= 1MB
);

------------------------------------------------
------------------------------------------------
use [BD];
Create table Client(
nom varchar(20)
) on Client;


Create table Produit(
nom1 varchar(20)
) on Produit;

insert into Produit values('aaaaaaaaaaaaaaaaaaaaaaaaaaa')
go 50000;


select 
       DB_NAME() AS Dbname, 
	   name as fileName, 
	   size as Current_size,
	   size/128.0 as Current_size_MB,
	   size/128.0 - CAST(FILEPROPERTY(name,'SpaceUsed') AS INT)/128.0 AS FREESPACEMB

from sys.database_files;

 
