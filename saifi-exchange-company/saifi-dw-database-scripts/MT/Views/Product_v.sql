CREATE VIEW [MT].[Product_v] AS 
SELECT [ProductKey] AS [Product Key]
, [ProductID] AS [Product ID]
, [ProductDesc] AS [Product Description]
, [ProductLineID] AS [Product Line ID]
, [ProductLineDesc] AS [Product Line Description]
, [ProductFamilyID] AS [Product Family ID]
, [ProductFamilyDesc] AS [Product Family Description]
, [RowIsCurrent] AS [Row Is Current]
, [RowStartDate] AS [Row Start Date]
, [RowEndDate] AS [Row End Date]
, [InsertAuditKey] AS [InsertAuditKey]
, [UpdateAuditKey] AS [UpdateAuditKey]
FROM dbo.DimProduct