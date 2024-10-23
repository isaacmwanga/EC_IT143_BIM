/*****************************************************************************************************************
NAME:    3.4 Adventure Works
PURPOSE:To answer 8 questions about the AdventureWorks 2019 DB
 

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     05/13/2024   IMWANGA      1. Built this script for EC IT143


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
******************************************************************************************************************/

-- Q1:Business User question - Marginal complexity: What are the top-performing geographic regions in terms of sales volume?
-- A1
SELECT [ModifiedDate]
FROM  [Sales].[CountryRegionCurrency]
ORDER BY [ModifiedDate] DESC
-- Q2 - Business User question - Marginal complexity: What is the trend in sales volume across different time periods? 
-- A2 :
SELECT  [ModifiedDate]
FROM  [Sales].[SalesPersonQuotaHistory]
ORDER BY [ModifiedDate] DESC
-- Q3 :I would like to know the sum of all benefit hours owed to staff through Human Resources, grouped by department.
-- A3 : 
SELECT [GroupName]
FROM [HumanResources].[Department]
ORDER BY [GroupName] DESC
-- Q4 : Business User question - Moderate complexity: Which City improved in sales?
-- A4 :
SELECT [CountryRegionCode]
FROM  [Sales].[SalesTerritory]
ORDER BY [CountryRegionCode] DESC
-- Q5 : Business User question - Increased complexity: What materials we must use to improve our products?
-- A5 :
SELECT [DocumentSummary]
FROM [Production].[Document]
ORDER BY [DocumentSummary] DESC
-- Q6 : Business User question - Increased complexity: What other bicycle part we must improve?
-- A6 :
SELECT  [Name]
FROM [Production].[ProductSubcategory]
ORDER BY [Name] DESC
-- Q7 : Who is the primary contact for the customer with CustomerID 789?
-- A7 :
SELECT  [Name]
FROM  [Person].[PhoneNumberType]
ORDER BY [Name] DESC
-- Q8 : What is the name of the vendor with VendorID 234?
-- A8 :
SELECT [StandardPrice]
FROM [Purchasing].[ProductVendor]
ORDER BY [StandardPrice] DESC
