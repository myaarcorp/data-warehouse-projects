/* Create table dbo.DimBranch */
CREATE TABLE dbo.DimBranch (
   [BranchKey]  int IDENTITY  NOT NULL
,  [ParentBranchKey]  int   NULL
,  [GeographyKey]  int   NULL
,  [BranchAlternateKey]  varchar(15)   NOT NULL
,  [BusinessType]  varchar(20)   NOT NULL
,  [BranchName]  varchar(50)   NOT NULL
,  [BranchFullName]  varchar(120)   NULL
,  [StreetAddressLines]  varchar(140)   NULL
,  [Phone]  varchar(30)   NULL
,  [Fax]  varchar(30)   NULL
,  [NumberEmployees]  int   NULL
,  [OpenedDate]  date   NULL
,  [OrganizationName]  varchar(50)   NOT NULL
,  [BranchRegionKey]  int   NULL
,  [PercentageOfOwnership]  varchar(16)   NULL
,  [RowIsCurrent]  bit   NOT NULL
,  [RowStartDate]  datetime   NOT NULL
,  [RowEndDate]  datetime  DEFAULT '12/31/9999' NOT NULL

,  [InsertAuditKey]  int   NOT NULL
,  [UpdateAuditKey]  int   NOT NULL
, CONSTRAINT [PK_dbo.DimBranch] PRIMARY KEY CLUSTERED 
( [BranchKey] )
) ON [DEFAULT]
;
GO
ALTER TABLE dbo.DimBranch ADD CONSTRAINT
   FK_dbo_DimBranch_ParentBranchKey FOREIGN KEY
   (
   ParentBranchKey
   ) REFERENCES DimBranch
   ( BranchKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.DimBranch ADD CONSTRAINT
   FK_dbo_DimBranch_GeographyKey FOREIGN KEY
   (
   GeographyKey
   ) REFERENCES DimGeography
   ( GeographyKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.DimBranch ADD CONSTRAINT
   FK_dbo_DimBranch_BranchRegionKey FOREIGN KEY
   (
   BranchRegionKey
   ) REFERENCES DimRegion
   ( RegionKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.DimBranch ADD CONSTRAINT
   FK_dbo_DimBranch_InsertAuditKey FOREIGN KEY
   (
   InsertAuditKey
   ) REFERENCES DimAudit
   ( AuditKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.DimBranch ADD CONSTRAINT
   FK_dbo_DimBranch_UpdateAuditKey FOREIGN KEY
   (
   UpdateAuditKey
   ) REFERENCES DimAudit
   ( AuditKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;