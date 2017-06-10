/* Create table dbo.DimRegion */
CREATE TABLE dbo.DimRegion (
   [RegionKey]  int IDENTITY  NOT NULL
,  [RegionID]  int   NOT NULL
,  [RegionDesc]  varchar(50)   NOT NULL
,  [RegionGroup]  varchar(50)   NULL
,  [RowIsCurrent]  bit   NOT NULL
,  [RowStartDate]  datetime   NOT NULL
,  [RowEndDate]  datetime  DEFAULT '12/31/9999' NOT NULL
,  [InsertAuditKey]  int   NOT NULL
,  [UpdateAuditKey]  int   NOT NULL
, CONSTRAINT [PK_dbo.DimRegion] PRIMARY KEY CLUSTERED 
( [RegionKey] )
) ON [DEFAULT]
;
GO
ALTER TABLE dbo.DimRegion ADD CONSTRAINT
   FK_dbo_DimRegion_InsertAuditKey FOREIGN KEY
   (
   InsertAuditKey
   ) REFERENCES DimAudit
   ( AuditKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.DimRegion ADD CONSTRAINT
   FK_dbo_DimRegion_UpdateAuditKey FOREIGN KEY
   (
   UpdateAuditKey
   ) REFERENCES DimAudit
   ( AuditKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;