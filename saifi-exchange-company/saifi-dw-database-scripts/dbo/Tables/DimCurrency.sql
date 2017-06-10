/* Create table dbo.DimCurrency */
CREATE TABLE dbo.DimCurrency (
   [CurrencyKey]  int IDENTITY  NOT NULL
,  [CurrencyAlternateKey]  char(3)   NOT NULL
,  [CurrencyNumber]  varchar(3)   NOT NULL
,  [CurrencySwiftCode]  char(3)   NULL
,  [CurrencyName]  varchar(60)   NULL
,  [CurrencyFullName]  varchar(120)   NULL
,  [Currency_Decimal]  char(1)   NULL
,  [Currency_Display_Factor]  decimal(10,5)  DEFAULT 1 NULL
,  [Local_Currency_Flag]  char(1)  DEFAULT 'N' NULL
,  [Group_Currency_Flag]  char(1)  DEFAULT 'N' NULL
,  [Member_Currency_Flag]  char(1)   NULL
,  [Currency_Thousands_Separator]  varchar(8)  DEFAULT 'default' NULL
,  [Currency_Decimal_Separator]  varchar(8)  DEFAULT 'default' NULL
,  [Currency_ISO_Symbol]  varchar(60)   NULL
,  [RowIsCurrent]  bit   NOT NULL
,  [RowStartDate]  datetime   NOT NULL
,  [RowEndDate]  datetime  DEFAULT '12/31/9999' NOT NULL

,  [InsertAuditKey]  int   NOT NULL
,  [UpdateAuditKey]  int   NOT NULL
, CONSTRAINT [PK_dbo.DimCurrency] PRIMARY KEY CLUSTERED 
( [CurrencyKey] )
) ON [DEFAULT]
;
GO
ALTER TABLE dbo.DimCurrency ADD CONSTRAINT
   FK_dbo_DimCurrency_InsertAuditKey FOREIGN KEY
   (
   InsertAuditKey
   ) REFERENCES DimAudit
   ( AuditKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.DimCurrency ADD CONSTRAINT
   FK_dbo_DimCurrency_UpdateAuditKey FOREIGN KEY
   (
   UpdateAuditKey
   ) REFERENCES DimAudit
   ( AuditKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;