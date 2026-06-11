# Customer_Behaviour_Analysis_Dashboard
SQL &amp; Power BI dashboard analyzing customer behavior, purchasing patterns, and customer segments. Includes data preparation, analytical views, DAX measures, and interactive visualizations.
# Dashboard View
<img width="1949" height="1077" alt="obraz" src="https://github.com/user-attachments/assets/82b7e6a2-fde8-45f1-af3b-b03aea95122b" />
# Business Problem
The objective of this analysis was to explore customer profiles and purchasing behavior in order to identify customer segments, understand buying patterns, and support data-driven business decisions.
# Dataset
Dataset
The dataset used in this project is the AdventureWorks database (SQL Server sample database).
The following tables were used:

FactInternetSales and DimDate.

DimCustomer joined with DimGeography and DimSalesTerritory to enrich customer information with location and territory data.

DimProduct joined with DimProductSubcategory and DimProductCategory to create a complete product hierarchy.

FactInternetSalesReason joined with DimSalesReason to analyze purchase reasons.

# Data Limitations 
During data validation, approximately 20 customers with unrealistic age values (above 100 years old) were identified. These records were excluded from the analysis to improve data quality and ensure more accurate customer segmentation.

# Tools Used

SQL Server (data preparation, joins, creating analytical views)

Power BI (Power Query, DAX, data modeling, visualization)

Charts and interactive dashboard

# Analysis Process
Data preparation in SQL – selected relevant tables and created analytical datasets using JOIN operations. Removed unnecessary attributes and retained only variables relevant for customer behavior analysis. Created SQL views to prepare data for Power BI.

Data preparation in Power BI – built a clean analytical data model, created additional calculated columns such as Age Groups, and developed KPI measures using DAX, including Total Customers, Average Age, and Returning Customers Percentage.

Data Visualization in Power BI – created interactive visualizations using cards to display KPIs, tables to identify top products and purchase reasons, a line chart to analyze new customer acquisition trends, column charts to analyze customer distribution by geography and age groups, and pie charts to visualize customer demographics such as gender and marital status.

# Key Insights
Water Bottle - 30 oz. was purchased by the highest number of customers (4K customers, representing 22% of customers).

Price was the most common purchase reason recorded in sales data.

The largest customer segment was the 50–59 age group (5.9K customers).

The highest number of new customers was acquired in 2025 (12.5K customers).

North America had the highest number of customers by territory, while London was the leading city by customer count.

37% of customers were returning customers and placed more than one order.

# Recommendations
Focus customer acquisition and retention strategies on regions with growth opportunities.

Analyze pricing strategy and purchase motivations to better understand customers driven by price factors.

Analyze factors contributing to customer growth in 2025 and maintain strategies that support future customer acquisition.
