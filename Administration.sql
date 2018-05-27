-- 1) a) Unite logique
EXEC master.dbo.sp_addumpdevice  'disk','salesbackup', 'C:\HumanResources\salesbackup.bak';
-- 1) b)Full BACKUP 
BACKUP DATABASE HumanResources 
TO  salesbackup MIRROR TO DISK='C:\Archive\HumanResources.bak'
WITH FORMAT, INIT;
--1) c) Diff BACKUP
BACKUP DATABASE HumanResources 
TO  salesbackup MIRROR TO DISK='C:\Archive\HumanResources.bak'
WITH  DIFFERENTIAL , NOFORMAT, NOINIT, CHECKSUM;

RESTORE VERIFYONLY FROM  salesbackup;

--1) d) Backup log file 
BACKUP LOG HumanResources
TO  logback 
WITH COMPRESSION

-- 2) Restore 
Use master;
ALTER DATABASE HumanResources SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
BACKUP LOG HumanResources
TO  logback 
WITH COMPRESSION,  NORECOVERY

RESTORE DATABASE [HumanResources] FROM  [salesbackup] WITH  FILE = 1,  NORECOVERY;
RESTORE DATABASE [HumanResources] FROM  [salesbackup] WITH  FILE = 2,  NORECOVERY;
RESTORE LOG [HumanResources] FROM  [logback] WITH  FILE = 1,RECOVERY;

ALTER DATABASE [HumanResources] SET MULTI_USER





