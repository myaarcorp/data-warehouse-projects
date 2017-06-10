﻿CREATE VIEW [MT].[Branch_v] AS 
SELECT [BranchKey] AS [Branch Key]
, [ParentBranchKey] AS [Parent Branch Key]
, [GeographyKey] AS [Geography Key]
, [BranchAlternateKey] AS [Branch Alternate Key]
, [BusinessType] AS [BusinessType]
, [BranchName] AS [Branch Name]
, [BranchFullName] AS [Branch Full Name]
, [StreetAddressLines] AS [Street Address Lines]
, [Phone] AS [Phone]
, [Fax] AS [Fax]
, [NumberEmployees] AS [Number of Employees]
, [OpenedDate] AS [Opened Date]
, [OrganizationName] AS [Organization Name]
, [BranchRegionKey] AS [RegionKey]
, [PercentageOfOwnership] AS [Percentage Of Ownership]
, [RowIsCurrent] AS [Row Is Current]
, [RowStartDate] AS [Row Start Date]
, [RowEndDate] AS [Row End Date]

, [InsertAuditKey] AS [InsertAuditKey]
, [UpdateAuditKey] AS [UpdateAuditKey]
FROM dbo.DimBranch