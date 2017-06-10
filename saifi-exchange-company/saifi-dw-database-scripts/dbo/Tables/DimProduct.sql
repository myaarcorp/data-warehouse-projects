/* Create table dbo.DimProduct */
CREATE TABLE dbo.DimProduct (
   [ProductKey]  int IDENTITY  NOT NULL
,  [ProductID]  varchar(25)   NULL
,  [ProductDesc]  varchar(50)   NULL
,  [ProductLineID]  varchar(25)   NULL
,  [ProductLineDesc]  varchar(50)   NULL
,  [ProductFamilyID]  varchar(25)   NULL
,  [ProductFamilyDesc]  varchar(50)   NULL
,  [RowIsCurrent]  bit  DEFAULT 1 NOT NULL
,  [RowStartDate]  datetime   NOT NULL
,  [RowEndDate]  datetime  DEFAULT '12/31/9999' NOT NULL
,  [InsertAuditKey]  int   NOT NULL
,  [UpdateAuditKey]  int   NOT NULL
, CONSTRAINT [PK_dbo.DimProduct] PRIMARY KEY CLUSTERED 
( [ProductKey] )
) ON [DEFAULT]
;
GO
ALTER TABLE dbo.DimProduct ADD CONSTRAINT
   FK_dbo_DimProduct_InsertAuditKey FOREIGN KEY
   (
   InsertAuditKey
   ) REFERENCES DimAudit
   ( AuditKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.DimProduct ADD CONSTRAINT
   FK_dbo_DimProduct_UpdateAuditKey FOREIGN KEY
   (
   UpdateAuditKey
   ) REFERENCES DimAudit
   ( AuditKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;