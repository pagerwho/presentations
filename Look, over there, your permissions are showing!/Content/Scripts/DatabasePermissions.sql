:connect PA-SQL1
create login [TRAVIS-PAGE\DBA] from windows
GO
alter server role sysadmin add member [TRAVIS-PAGE\DBA]
GO
create login [TRAVIS-PAGE\ImperialBackup] from windows
GO
alter server role sysadmin add member [TRAVIS-PAGE\ImperialBackup]
GO
create login [TRAVIS-PAGE\StarDestroyerWeapons] from windows
GO
create login [TRAVIS-PAGE\StormtrooperJS-7112] from windows
GO
create login [TRAVIS-PAGE\ImperialETL] from windows
GO
grant impersonate on sa to [TRAVIS-PAGE\StarDestroyerWeapons]
GO
use AdventureWorks2016
GO
create database role NestedRole_Level1
GO
create database role NestedRole_Level2
GO
create database role NestedRole_Level3
GO
create user [TRAVIS-PAGE\StormtrooperJS-7112] from login [TRAVIS-PAGE\StormtrooperJS-7112]
go
alter database role NestedRole_Level1 add member [TRAVIS-PAGE\StormtrooperJS-7112]
go
grant execute on [HumanResources].[uspUpdateEmployeeHireInfo] to NestedRole_Level1
grant execute on [HumanResources].[uspUpdateEmployeeLogin] to NestedRole_Level1
grant execute on [HumanResources].[uspUpdateEmployeePersonalInfo] to NestedRole_Level1
GO
grant select on [dbo].[DatabaseLog] to NestedRole_Level2
grant select on [dbo].[AWBuildVersion] to NestedRole_Level2
grant select on [dbo].[ErrorLog] to NestedRole_Level2
grant select on [HumanResources].[Department] to NestedRole_Level2
grant select on [HumanResources].[Employee] to NestedRole_Level2
grant select on [HumanResources].[EmployeeDepartmentHistory] to NestedRole_Level2
grant select on [HumanResources].[EmployeePayHistory] to NestedRole_Level2
grant select on [HumanResources].[JobCandidate] to NestedRole_Level2
grant select on [HumanResources].[Shift] to NestedRole_Level2
grant select on [HumanResources].[vEmployee] to NestedRole_Level2
grant select on [HumanResources].[vEmployeeDepartment] to NestedRole_Level2
grant select on [HumanResources].[vEmployeeDepartmentHistory] to NestedRole_Level2
grant select on [HumanResources].[vJobCandidate] to NestedRole_Level2
grant select on [HumanResources].[vJobCandidateEducation] to NestedRole_Level2
grant select on [HumanResources].[vJobCandidateEmployment] to NestedRole_Level2
GO
grant execute on [dbo].[uspGetBillOfMaterials] to NestedRole_Level3
grant execute on [dbo].[uspGetEmployeeManagers] to NestedRole_Level3
grant execute on [dbo].[uspGetManagerEmployees] to NestedRole_Level3
grant execute on [dbo].[uspGetWhereUsedProductID] to NestedRole_Level3
grant execute on [dbo].[uspLogError] to NestedRole_Level3
grant execute on [dbo].[uspPrintError] to NestedRole_Level3
grant execute on [dbo].[uspSearchCandidateResumes] to NestedRole_Level3
GO
alter database role NestedRole_Level1 add member NestedRole_Level2
GO
alter database role NestedRole_Level2 add member NestedRole_Level3
GO
create user [TRAVIS-PAGE\ImperialETL] from login [TRAVIS-PAGE\ImperialETL]
go
alter database role db_ddladmin add member [TRAVIS-PAGE\ImperialETL]
GO
alter database role db_owner add member [TRAVIS-PAGE\StormtrooperJS-7112]
GO
create user [TRAVIS-PAGE\StarDestroyerWeapons] from login [TRAVIS-PAGE\StarDestroyerWeapons]
go
alter database role db_datareader add member [TRAVIS-PAGE\StarDestroyerWeapons]
GO
alter database role db_datawriter add member [TRAVIS-PAGE\StarDestroyerWeapons]
GO
:connect PA-SQL2
create login [TRAVIS-PAGE\DBA] from windows
GO
alter server role sysadmin add member [TRAVIS-PAGE\DBA]
GO
create login [TRAVIS-PAGE\ImperialBackup] from windows
GO
create login [TRAVIS-PAGE\DeathStarPayroll] from windows
GO
create login [TRAVIS-PAGE\ImperialETL] from windows
GO
alter server role sysadmin add member [TRAVIS-PAGE\ImperialBackup]
GO
use AdventureWorks2016
GO
create user [TRAVIS-PAGE\ImperialETL] from login [TRAVIS-PAGE\ImperialETL]
go
alter database role db_ddladmin add member [TRAVIS-PAGE\ImperialETL]
GO
grant execute on [dbo].[uspGetBillOfMaterials] to PUBLIC
grant execute on [dbo].[uspGetEmployeeManagers] to PUBLIC
grant execute on [dbo].[uspGetManagerEmployees] to PUBLIC
grant execute on [dbo].[uspGetWhereUsedProductID] to PUBLIC
grant execute on [dbo].[uspLogError] to PUBLIC
grant execute on [dbo].[uspPrintError] to PUBLIC
grant execute on [dbo].[uspSearchCandidateResumes] to PUBLIC
GO
alter database role SQLAgentOperatorRole add member [TRAVIS-PAGE\StormtrooperJS-7112]
GO
alter database role SQLAgentReaderRole add member [TRAVIS-PAGE\StormtrooperJS-7112]
GO
alter database role SQLAgentUserRole add member [TRAVIS-PAGE\StormtrooperJS-7112]
GO
grant control server to [TRAVIS-PAGE\Greedo]
GO