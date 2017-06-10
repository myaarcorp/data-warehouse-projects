/* Create table dbo.DimEmployee */
CREATE TABLE dbo.DimEmployee (
   [EmployeeKey]  int IDENTITY  NOT NULL
,  [EmployeeId]  varchar(25)   NOT NULL
,  [EmployeeNationalID]  varchar(15)   NULL
,  [FullName]  varchar(200)   NOT NULL
,  [LoginID]  varchar(256)   NOT NULL
,  [EmailAddress]  varchar(50)   NOT NULL
,  [Phone]  varchar(25)   NOT NULL
,  [JobTitle]  varchar(50)   NOT NULL
,  [Department]  varchar(50)   NOT NULL
,  [FtPtStatus]  varchar(50)   NOT NULL
,  [BirthDateKey]  int   NOT NULL
,  [HireDateKey]  int   NOT NULL
,  [TermDateKey]  int   NOT NULL
,  [SupervisorId]  int   NOT NULL
,  [SupervisorNameLastFirst]  varchar(100)   NOT NULL
,  [BranchKey]  int   NOT NULL
,  [MaritalStatus]  char(1)   NULL
,  [Gender]  char(1)   NULL
,  [SalesPersonFlag]  bit   NULL
,  [CurrentFlag]  bit   NULL
,  [EmployeePhoto]  varbinary(max)   NULL
,  [RowIsCurrent]  bit   NOT NULL
,  [RowStartDate]  datetime   NOT NULL
,  [RowEndDate]  datetime  DEFAULT '12/31/9999' NOT NULL
,  [InsertAuditKey]  int   NOT NULL
,  [UpdateAuditKey]  int   NOT NULL
, CONSTRAINT [PK_dbo.DimEmployee] PRIMARY KEY CLUSTERED 
( [EmployeeKey] )
) ON [DEFAULT]
;
GO
ALTER TABLE dbo.DimEmployee ADD CONSTRAINT
   FK_dbo_DimEmployee_InsertAuditKey FOREIGN KEY
   (
   InsertAuditKey
   ) REFERENCES DimAudit
   ( AuditKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.DimEmployee ADD CONSTRAINT
   FK_dbo_DimEmployee_UpdateAuditKey FOREIGN KEY
   (
   UpdateAuditKey
   ) REFERENCES DimAudit
   ( AuditKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;