/* Purpose: Create a product dimension with a complete product hierarchy (Product - Subcategory - Category)
   Used for: analyzing customer purchasing behavior across product categories and subcategories
   Source: AdventureWorksDW2025
*/

CREATE VIEW vw_Product AS
SELECT 
       P.[ProductKey]
      ,P.[ProductSubcategoryKey]
      ,S.[ProductCategoryKey]
      ,P.[EnglishProductName]
      ,S.[EnglishProductSubcategoryName]
      ,C.[EnglishProductCategoryName]
  FROM [AdventureWorksDW2025].[dbo].[DimProduct] AS P
       INNER JOIN [dbo].[DimProductSubcategory] AS S ON P.ProductSubcategoryKey=S.ProductSubcategoryKey
       INNER JOIN [dbo].[DimProductCategory] AS C ON S.ProductCategoryKey=C.ProductCategoryKey