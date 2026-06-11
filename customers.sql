/* Purpose: Build enriched customer dimension for segmentation and behavioral analysis
Used in: Power BI Customer Behavior Dashboard
Source: AdventureWorksDW2025 */

CREATE VIEW dbo.vw_Customer AS
SELECT 
       C.[CustomerKey]
      ,C.[FirstName]  
      ,C.[LastName]
      ,C.[BirthDate]
      ,C.[MaritalStatus]
      ,C.[Gender]
      ,C.[TotalChildren]
      ,C.[HouseOwnerFlag]
      ,C.[NumberCarsOwned]
      ,C.[DateFirstPurchase]
      ,C.[CommuteDistance]
      ,G.[City]
      ,G.[EnglishCountryRegionName]
      ,T.[SalesTerritoryRegion]
      ,T.[SalesTerritoryCountry]
      ,T.[SalesTerritoryGroup]
  FROM [AdventureWorksDW2025].[dbo].[DimCustomer] AS C
        INNER JOIN [dbo].[DimGeography] AS G ON C.GeographyKey=G.GeographyKey
        INNER JOIN [dbo].[DimSalesTerritory] AS T ON G.SalesTerritoryKey=T.SalesTerritoryKey