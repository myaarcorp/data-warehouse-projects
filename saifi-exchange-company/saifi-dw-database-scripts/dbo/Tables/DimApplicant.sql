/* Create table dbo.DimApplicant */
CREATE TABLE dbo.DimApplicant (
   [ApplicantKey]  bigint IDENTITY  NOT NULL
,  [GeographyKey]  int   NULL
,  [IdentificationDocNo]  varchar(25)   NOT NULL
,  [MobileNumber]  varchar(30)   NOT NULL
,  [CustomerNumber]  varchar(25)   NULL
,  [FullName]  varchar(120)   NOT NULL
,  [Address]  varchar(120)   NOT NULL
,  [CountryBirthCode]  varchar(3)   NULL
,  [CountryCitizenshipCode]  varchar(3)   NULL
,  [DateOfBirth]  date   NULL
,  [CustomerSegment]  varchar(15)   NULL
,  [BankName]  varchar(50)   NULL
,  [BankAddress]  varchar(120)   NULL
,  [BankSwiftID]  varchar(4)   NULL
,  [BankSwiftLocation]  varchar(2)   NULL
,  [BankSwiftBranch]  varchar(3)   NULL
,  [AccountName]  varchar(50)   NULL
,  [AccountNo]  varchar(30)   NULL
,  [ChequeNo]  varchar(30)   NULL
,  [RowIsCurrent]  bit   NOT NULL
,  [RowStartDate]  datetime   NOT NULL
,  [RowEndDate]  datetime  DEFAULT '12/31/9999' NOT NULL
,  [InsertAuditKey]  int   NOT NULL
,  [UpdateAuditKey]  int   NOT NULL
, CONSTRAINT [PK_dbo.DimApplicant] PRIMARY KEY CLUSTERED 
( [ApplicantKey] )
) ON [DEFAULT]
;
GO
ALTER TABLE dbo.DimApplicant ADD CONSTRAINT
   FK_dbo_DimApplicant_GeographyKey FOREIGN KEY
   (
   GeographyKey
   ) REFERENCES DimGeography
   ( GeographyKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.DimApplicant ADD CONSTRAINT
   FK_dbo_DimApplicant_InsertAuditKey FOREIGN KEY
   (
   InsertAuditKey
   ) REFERENCES DimAudit
   ( AuditKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.DimApplicant ADD CONSTRAINT
   FK_dbo_DimApplicant_UpdateAuditKey FOREIGN KEY
   (
   UpdateAuditKey
   ) REFERENCES DimAudit
   ( AuditKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;