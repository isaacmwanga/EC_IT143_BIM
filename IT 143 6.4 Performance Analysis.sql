/*****************************************************************************************************************
NAME:    Performance Analysis
PURPOSE: Performance Analysis Scripts

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/28/2024   BIMWANGA      1. Built this script for EC IT143


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
******************************************************************************************************************/

-- Step 1: Query a Table in AdventureWorks2019

    --Start by choosing a table in the AdventureWorks2019 database with a character field that isn’t indexed. For this example, let’s use the Person.Person table. USE AdventureWorks2019; GO

SELECT * 
FROM Person.Person;

    --Step 2: Add a WHERE Clause on an Unindexed Character Field

   --Now, modify the query to add a WHERE clause that filters by an unindexed character field, such as LastName. This will create a poorly performing query that requires a full table scan.

			SELECT * FROM Person.Person
			WHERE LastName = 'Smith';

     


  --Step 4: Review the Execution Plan

	--1.	Open the Execution Plan tab that appears after running the query.
	--2.	Look for the Missing Index recommendation in green text.
	--3.	Review the estimated subtree cost in the execution plan, which represents the cost of the query. Note this value for comparison later.

--Step 5: Examine Missing Index Recommendations

  --To view details of the recommended index:

	--1.	Right-click on the Missing Index recommendation.
	--2.	Select Missing Index Details… to generate a script with SQL Server’s recommended index.

   --Step 6: Name and Create the Index

   --Modify the script to include a meaningful name for the new index, then run the script to create it. For example:

--USE AdventureWorks2019;GO

CREATE NONCLUSTERED INDEX IX_Person_LastName
ON Person.Person (LastName);
GO

 