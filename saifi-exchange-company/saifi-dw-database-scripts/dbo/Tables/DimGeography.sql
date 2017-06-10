/* Create table dbo.DimGeography */
CREATE TABLE dbo.DimGeography (
   [GeographyKey]  int IDENTITY  NOT NULL
,  [City]  varchar(30)   NULL
,  [StateProvinceCode]  varchar(3)   NULL
,  [StateProvinceName]  varchar(50)   NULL
,  [CountryCode]  varchar(3)   NULL
,  [CountryName]  varchar(50)   NULL
,  [PostalCode]  varchar(15)   NULL
,  [RegionKey]  int   NULL
,  [IpAddressLocator]  varchar(15)   NULL
,  [RowIsCurrent]  bit   NOT NULL
,  [RowStartDate]  datetime   NOT NULL
,  [RowEndDate]  datetime  DEFAULT '12/31/9999' NOT NULL
,  [InsertAuditKey]  int   NOT NULL
,  [UpdateAuditKey]  int   NOT NULL
, CONSTRAINT [PK_dbo.DimGeography] PRIMARY KEY CLUSTERED 
( [GeographyKey] )
) ON [DEFAULT]
;
GO
ALTER TABLE dbo.DimGeography ADD CONSTRAINT
   FK_dbo_DimGeography_RegionKey FOREIGN KEY
   (
   RegionKey
   ) REFERENCES DimRegion
   ( RegionKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.DimGeography ADD CONSTRAINT
   FK_dbo_DimGeography_InsertAuditKey FOREIGN KEY
   (
   InsertAuditKey
   ) REFERENCES DimAudit
   ( AuditKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.DimGeography ADD CONSTRAINT
   FK_dbo_DimGeography_UpdateAuditKey FOREIGN KEY
   (
   UpdateAuditKey
   ) REFERENCES DimAudit
   ( AuditKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;