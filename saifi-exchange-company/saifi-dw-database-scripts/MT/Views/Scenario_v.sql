CREATE VIEW [MT].[Scenario_v] AS 
SELECT [ScenarioKey] AS [Scenario Key]
, [ScenarioCode] AS [Scenario Code]
, [ScenarioDesc] AS [Scenario Description]
, [ActualScenarioFlag] AS [Actual Scenario Flag]
, [AuditKey] AS [Audit Key]
FROM dbo.DimScenario