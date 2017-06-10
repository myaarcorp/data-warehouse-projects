﻿CREATE VIEW [MT].[Employee_v] AS 
SELECT [EmployeeKey] AS [Employee Key]
, [EmployeeId] AS [Employee ID]
, [EmployeeNationalID] AS [EmployeeNationalID]
, [FullName] AS [Full Name]
, [LoginID] AS [LoginID]
, [EmailAddress] AS [EmailAddress]
, [Phone] AS [Phone]
, [JobTitle] AS [Job Title]
, [Department] AS [Department]
, [FtPtStatus] AS [Full Time or Part Time]
, [BirthDateKey] AS [Date key for DOB]
, [HireDateKey] AS [Date key for Hire Date]
, [TermDateKey] AS [Date key for Termination date]
, [SupervisorId] AS [Supervisor ID]
, [SupervisorNameLastFirst] AS [Supervisor Name Last First]
, [BranchKey] AS [BranchKey]
, [MaritalStatus] AS [MaritalStatus]
, [Gender] AS [Gender]
, [SalesPersonFlag] AS [SalesPersonFlag]
, [CurrentFlag] AS [CurrentFlag]
, [EmployeePhoto] AS [EmployeePhoto]
, [RowIsCurrent] AS [Row Is Current]
, [RowStartDate] AS [Row Start Date]
, [RowEndDate] AS [Row End Date]
, [InsertAuditKey] AS [InsertAuditKey]
, [UpdateAuditKey] AS [UpdateAuditKey]
FROM dbo.DimEmployee