/* Create table dbo.DimAudit */
CREATE TABLE dbo.DimAudit (
   [AuditKey]  int IDENTITY  NOT NULL
,  [ParentAuditKey]  int   NOT NULL
,  [TableName]  varchar(50)  DEFAULT 'Unknown' NOT NULL
,  [PkgName]  varchar(50)  DEFAULT 'Unknown' NOT NULL
,  [PkgGUID]  uniqueidentifier   NULL
,  [PkgVersionGUID]  uniqueidentifier   NULL
,  [PkgVersionMajor]  smallint   NULL
,  [PkgVersionMinor]  smallint   NULL
,  [ExecStartDT]  datetime  DEFAULT getdate() NOT NULL
,  [ExecStopDT]  datetime   NULL
,  [ExecutionInstanceGUID]  uniqueidentifier   NULL
,  [ExtractRowCnt]  bigint   NULL
,  [InsertRowCnt]  bigint   NULL
,  [UpdateRowCnt]  bigint   NULL
,  [ErrorRowCnt]  bigint   NULL
,  [TableInitialRowCnt]  bigint   NULL
,  [TableFinalRowCnt]  bigint   NULL
,  [TableMaxSurrogateKey]  bigint   NULL
,  [TableMaxDateTime]  datetime   NULL
,  [SuccessfulProcessingInd]  char(1)  DEFAULT 'N' NOT NULL
, CONSTRAINT [PK_dbo.DimAudit] PRIMARY KEY CLUSTERED 
( [AuditKey] )
) ON [DEFAULT]
;
GO
ALTER TABLE dbo.DimAudit ADD CONSTRAINT
   FK_dbo_DimAudit_ParentAuditKey FOREIGN KEY
   (
   ParentAuditKey
   ) REFERENCES DimAudit
   ( AuditKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;