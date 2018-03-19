create database AW_Marketing
on primary -- les specifications du fichier data 
(
name=AW_Marketing_Data1,--nom logique (alias)
filename='D:\Microsoft SQL Server\Databases\AW_Marketing_Data1.mdf',--nom physique
filegrowth=5MB, --pas d'incrementation
size=6MB,--taille initiale
maxsize= 100mb
),
FILEGROUP CurrentDATA (
name=AW_Marketing_Data2,--nom logique (alias)
filename='D:\Microsoft SQL Server\Databases\AW_Marketing_Data2.ndf',--nom physique
filegrowth=15MB, --pas d'incrementation
size=5MB,--taille initiale
maxsize= 100mb
),
FILEGROUP ArchiveDATA(
name=AW_Marketing_Data3,--nom logique (alias)
filename='D:\Microsoft SQL Server\Databases\ArchiveDATA.ndf',--nom physique
filegrowth=10MB, --pas d'incrementation
size=6MB,--taille initiale
maxsize= 150mb
)

log on 
(
name=AW_Marketing_log, -- nom logique
filename='D:\Microsoft SQL Server\Databases\AW_Marketing_log.ldf',
size=10MB,--taille initiale
filegrowth=10%,
maxsize=250mb
);

---------------------------------------------------
alter database sales add filegroup client;
alter sales 
add file
(
name=
filename=
size=
) to filegroup client;

create table clients(
nom varchar(30)
)

exec sp_help'clients1'

create table clients1(
nom varchar(30)
) on ArchiveDATA


DBCC SHRINKFILE('logical_ndf_file_name', EMPTYFILE);

ALTER DATABASE AW_Marketing REMOVE FILE AW_Marketing_Data3;