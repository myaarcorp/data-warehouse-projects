/* Create table dbo.DimDate */
CREATE TABLE dbo.DimDate (
   [DateKey]  int   NOT NULL
,  [Date]  datetime   NOT NULL
,  [FiscalPeriodID]  int   NULL
,  [FullDate]  varchar(30)   NULL
,  [DayOfWeek]  tinyint   NULL
,  [DayName]  nchar(10)   NULL
,  [DayOfMonth]  tinyint   NULL
,  [DayOfYear]  smallint   NULL
,  [WeekOfYear]  tinyint   NULL
,  [MonthName]  nchar(10)   NULL
,  [MonthOfYear]  tinyint   NULL
,  [Quarter]  tinyint   NULL
,  [QuarterName]  nchar(10)   NULL
,  [Year]  int   NULL
,  [YearName]  nchar(7)   NULL
,  [YYYYMM]  int   NULL
,  [IsAWeekday]  bit  DEFAULT 1 NULL
,  [EOMFlag]  bit  DEFAULT 0 NULL
,  [IsCurrentDay]  bit  DEFAULT 0 NULL
,  [IsFiscalMonthEnd]  bit  DEFAULT 0 NULL
,  [AuditKey]  int   NOT NULL
, CONSTRAINT [PK_dbo.DimDate] PRIMARY KEY CLUSTERED 
( [DateKey] )
) ON [DEFAULT]
;
GO
ALTER TABLE dbo.DimDate ADD CONSTRAINT
   FK_dbo_DimDate_AuditKey FOREIGN KEY
   (
   AuditKey
   ) REFERENCES DimAudit
   ( AuditKey )
     ON UPDATE  NO ACTION
     ON DELETE  NO ACTION
;