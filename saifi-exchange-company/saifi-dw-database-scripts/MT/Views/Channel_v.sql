CREATE VIEW [MT].[Channel_v] AS 
SELECT [ChannelKey] AS [Channel Key]
, [ChannelID] AS [Channel ID]
, [ChannelDesc] AS [Channel Description]
, [ChannelType] AS [Channel Type]
, [ChannelClassID] AS [Channel Class ID]
, [ChannelClassDesc] AS [Channel Class Desc]
, [RowIsCurrent] AS [Row Is Current]
, [RowStartDate] AS [Row Start Date]
, [RowEndDate] AS [Row End Date]
, [InsertAuditKey] AS [InsertAuditKey]
, [UpdateAuditKey] AS [UpdateAuditKey]
FROM dbo.DimChannel