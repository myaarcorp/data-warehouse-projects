/* Create table dbo.DimScenario */
CREATE TABLE dbo.DimScenario (
   [ScenarioKey]  int IDENTITY  NOT NULL
,  [ScenarioCode]  varchar(40)   NOT NULL
,  [ScenarioDesc]  varchar(60)   NULL
,  [ActualScenarioFlag]  char(1)  DEFAULT 'N' NULL
,  [AuditKey]  int   NOT NULL
, CONSTRAINT [PK_dbo.DimScenario] PRIMARY KEY CLUSTERED 
( [ScenarioKey] )
) ON [DEFAULT]
;
GO
ALTER TABLE dbo.DimScenario ADD CONSTRAINT
   FK_dbo_DimScenario_AuditKey FOREIGN KEY
   (
   AuditKey
   ) REFERENCES DimAudit
   ( AuditKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;