﻿CREATE VIEW [MT].[Date_v] AS 
SELECT [DateKey] AS [Date Key]
, [Date] AS [Date]
, [FiscalPeriodID] AS [Fiscal Period ID]
, [FullDate] AS [Full Date]
, [DayOfWeek] AS [Day In Week]
, [DayName] AS [Day Name]
, [DayOfMonth] AS [Day In Month]
, [DayOfYear] AS [Day In Year]
, [WeekOfYear] AS [Week In Year]
, [MonthName] AS [Month Name]
, [MonthOfYear] AS [Month Of Year]
, [Quarter] AS [Quarter]
, [QuarterName] AS [Quarter Name]
, [Year] AS [Year]
, [YearName] AS [Year Name]
, [YYYYMM] AS [YYYYMM]
, [IsAWeekday] AS [Is Weekday]
, [EOMFlag] AS [Month End Flag]
, [IsCurrentDay] AS [Is Current Day]
, [IsFiscalMonthEnd] AS [Is Fiscal Month End]
, [AuditKey] AS [Audit Key]
FROM dbo.DimDate