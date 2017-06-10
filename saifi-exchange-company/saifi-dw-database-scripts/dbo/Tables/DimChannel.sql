/* Create table dbo.DimChannel */
CREATE TABLE dbo.DimChannel (
   [ChannelKey]  int IDENTITY  NOT NULL
,  [ChannelID]  varchar(25)   NOT NULL
,  [ChannelDesc]  varchar(50)   NOT NULL
,  [ChannelType]  varchar(25)   NULL
,  [ChannelClassID]  varchar(25)   NOT NULL
,  [ChannelClassDesc]  varchar(50)   NOT NULL
,  [RowIsCurrent]  bit   NOT NULL
,  [RowStartDate]  datetime   NOT NULL
,  [RowEndDate]  datetime  DEFAULT '12/31/9999' NOT NULL
,  [InsertAuditKey]  int   NOT NULL
,  [UpdateAuditKey]  int   NOT NULL
, CONSTRAINT [PK_dbo.DimChannel] PRIMARY KEY CLUSTERED 
( [ChannelKey] )
) ON [DEFAULT]
;
GO
ALTER TABLE dbo.DimChannel ADD CONSTRAINT
   FK_dbo_DimChannel_InsertAuditKey FOREIGN KEY
   (
   InsertAuditKey
   ) REFERENCES DimAudit
   ( AuditKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;
GO
ALTER TABLE dbo.DimChannel ADD CONSTRAINT
   FK_dbo_DimChannel_UpdateAuditKey FOREIGN KEY
   (
   UpdateAuditKey
   ) REFERENCES DimAudit
   ( AuditKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;