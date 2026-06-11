/* Purpose: Create an Internet Sales view with selected columns for reporting
   Used for: customer behavior analysis
   Source: AdventureWorksDW2025
*/

CREATE VIEW vw_InternetSales AS
SELECT 
       [ProductKey]
      ,[OrderDateKey]
      ,[CustomerKey]
      ,[SalesOrderNumber]
      ,[TotalProductCost]
      ,[SalesAmount]
  FROM [AdventureWorksDW2025].[dbo].[FactInternetSales]