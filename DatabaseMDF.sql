create database Marketing1
on primary -- les specifications du fichier data 
(
name=data02,--nom logique (alias)
filename='D:\Microsoft SQL Server\Databases\dataMarketing1.mdf',--nom physique
filegrowth=15MB, --pas d'incrementation
size=6MB,--taille initiale
maxsize= unlimited
),
FILEGROUP Group1(
name=data01,--nom logique (alias)
filename='D:\Microsoft SQL Server\Databases\dataMarketing2.ndf',--nom physique
filegrowth=15MB, --pas d'incrementation
size=6MB,--taille initiale
maxsize= unlimited
),
FILEGROUP Group2(
name=data01,--nom logique (alias)
filename='D:\Microsoft SQL Server\Databases\dataMarketing2.ndf',--nom physique
filegrowth=15MB, --pas d'incrementation
size=6MB,--taille initiale
maxsize= unlimited
)

log on 
(
name=log01, -- nom logique
filename='D:\Microsoft SQL Server\Databases\dataMarketing3.ldf',
size=6MB,--taille initiale
filegrowth=15%,
maxsize=500mb
);

