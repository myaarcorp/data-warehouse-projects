/* Create table dbo.FactMoneyTransfer */
CREATE TABLE dbo.FactMoneyTransfer (
   [BranchKey]  int   NOT NULL
,  [ProductKey]  int   NOT NULL
,  [ChannelKey]  int   NOT NULL
,  [TransactionDateKey]  int   NOT NULL
,  [EmployeeKey]  int   NULL
,  [TellerUserId]  varchar(256)   NULL
,  [ReceivedCurrencyKey]  int   NOT NULL
,  [PayoutCurrencyKey]  int   NOT NULL
,  [PartnerBranchKey]  int   NULL
,  [SenderApplicantKey]  bigint   NOT NULL
,  [BeneficiaryApplicantKey]  bigint   NOT NULL
,  [TransControlNumber]  varchar(25)   NULL
,  [InwardOutwardFlag]  varchar(15)   NOT NULL
,  [TransPurposeDetail]  varchar(120)   NULL
,  [TransStatus]  char(1)  DEFAULT 'A' NULL
,  [TransReference]  varchar(25)  DEFAULT '1' NULL
,  [ReceivedTotalAmount]  money  DEFAULT 0 NULL
,  [ReceivedChargeAmount]  money  DEFAULT 0 NULL
,  [ReceivedNetAmount]  money  DEFAULT 0 NULL
,  [PayoutTotalAmount]  money  DEFAULT 0 NULL
,  [PayoutChargeAmount]  money  DEFAULT 0 NULL
,  [PayoutNetAmount]  money  DEFAULT 0 NULL
,  [ExchangeRate]  float  DEFAULT 1 NULL
,  [ServiceFeeAmt]  money  DEFAULT 0 NULL
,  [HeadquarterFeePct]  float  DEFAULT 0 NULL
,  [PartnerFeeAmt]  money  DEFAULT 0 NULL
,  [FeeDiscountAmt]  float  DEFAULT 0 NULL
,  [TaxAmt]  money  DEFAULT 0 NULL
,  [PartitioningYear]  int   NOT NULL
,  [InsertAuditKey]  int  NOT NULL
,  [UpdateAuditKey]  int   NOT NULL
) ON MT_PS_FACT(PartitioningYear)
;
GO
ALTER TABLE dbo.FactMoneyTransfer ADD CONSTRAINT
   FK_dbo_FactMoneyTransfer_BranchKey FOREIGN KEY
   (
   BranchKey
   ) REFERENCES DimBranch
   ( BranchKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.FactMoneyTransfer ADD CONSTRAINT
   FK_dbo_FactMoneyTransfer_ProductKey FOREIGN KEY
   (
   ProductKey
   ) REFERENCES DimProduct
   ( ProductKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.FactMoneyTransfer ADD CONSTRAINT
   FK_dbo_FactMoneyTransfer_ChannelKey FOREIGN KEY
   (
   ChannelKey
   ) REFERENCES DimChannel
   ( ChannelKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.FactMoneyTransfer ADD CONSTRAINT
   FK_dbo_FactMoneyTransfer_TransactionDateKey FOREIGN KEY
   (
   TransactionDateKey
   ) REFERENCES DimDate
   ( DateKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.FactMoneyTransfer ADD CONSTRAINT
   FK_dbo_FactMoneyTransfer_EmployeeKey FOREIGN KEY
   (
   EmployeeKey
   ) REFERENCES DimEmployee
   ( EmployeeKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.FactMoneyTransfer ADD CONSTRAINT
   FK_dbo_FactMoneyTransfer_ReceivedCurrencyKey FOREIGN KEY
   (
   ReceivedCurrencyKey
   ) REFERENCES DimCurrency
   ( CurrencyKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.FactMoneyTransfer ADD CONSTRAINT
   FK_dbo_FactMoneyTransfer_PayoutCurrencyKey FOREIGN KEY
   (
   PayoutCurrencyKey
   ) REFERENCES DimCurrency
   ( CurrencyKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.FactMoneyTransfer ADD CONSTRAINT
   FK_dbo_FactMoneyTransfer_PartnerBranchKey FOREIGN KEY
   (
   PartnerBranchKey
   ) REFERENCES DimBranch
   ( BranchKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.FactMoneyTransfer ADD CONSTRAINT
   FK_dbo_FactMoneyTransfer_SenderApplicantKey FOREIGN KEY
   (
   SenderApplicantKey
   ) REFERENCES DimApplicant
   ( ApplicantKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.FactMoneyTransfer ADD CONSTRAINT
   FK_dbo_FactMoneyTransfer_BeneficiaryApplicantKey FOREIGN KEY
   (
   BeneficiaryApplicantKey
   ) REFERENCES DimApplicant
   ( ApplicantKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.FactMoneyTransfer ADD CONSTRAINT
   FK_dbo_FactMoneyTransfer_InsertAuditKey FOREIGN KEY
   (
   InsertAuditKey
   ) REFERENCES DimAudit
   ( AuditKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.FactMoneyTransfer ADD CONSTRAINT
   FK_dbo_FactMoneyTransfer_UpdateAuditKey FOREIGN KEY
   (
   UpdateAuditKey
   ) REFERENCES DimAudit
   ( AuditKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;