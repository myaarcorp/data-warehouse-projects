CREATE VIEW [MT].[Region_v] AS 
SELECT [RegionKey] AS [Region Key]
, [RegionID] AS [Region ID]
, [RegionDesc] AS [Region Description]
, [RegionGroup] AS [Region Group]
, [RowIsCurrent] AS [Row Is Current]
, [RowStartDate] AS [Row Start Date]
, [RowEndDate] AS [Row End Date]
, [InsertAuditKey] AS [InsertAuditKey]
, [UpdateAuditKey] AS [UpdateAuditKey]
FROM dbo.DimRegion