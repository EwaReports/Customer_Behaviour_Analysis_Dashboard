/* Purpose: Create a sales reason view containing purchase reasons and reason types
   Used for: analyzing customer purchase motivations in Internet Sales
   Source: AdventureWorksDW2025
*/

CREATE VIEW vw_SalesReason AS
SELECT 
       R.[SalesOrderNumber]
      ,R.[SalesReasonKey]
      ,DR.[SalesReasonName]
      ,DR.[SalesReasonReasonType]
  FROM [AdventureWorksDW2025].[dbo].[FactInternetSalesReason] AS R
    LEFT JOIN [dbo].[DimSalesReason] AS DR ON R.SalesReasonKey=DR.SalesReasonKey