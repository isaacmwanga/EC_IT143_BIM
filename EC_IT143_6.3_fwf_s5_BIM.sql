CREATE FUNCTION [dbo].[t_w3_schools_customers]
(@v_combined_name AS VARCHAR(500)
)
RETURNS VARCHAR(100)


/*****************************************************************************************************************
NAME:    dbo.udf_parse_first_name
PURPOSE: Parse First Name from combined name

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/26/2024   BIMWANGA      1. Built this script for EC IT440


RUNTIME: 
1s

NOTES: 
Adapted fron the following...
https://stackoyerflow.com/questions/5145791/extracting-first-name-and-last-name


******************************************************************************************************************/

     BEGIN

         DECLARE @_first_name AS VARCHAR(100);

         SET @v_first_nane = LEFT(@v_combined_name, CHARINDEX(' ', @v_conbined_name + ' ') - 1);
         RETURN @v_first_name;

    END;

GO
