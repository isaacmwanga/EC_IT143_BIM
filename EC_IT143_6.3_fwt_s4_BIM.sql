CREATE TRIGGER trg_hello_world_last_mod ON dbo.t_hello_world
AFTER UPDATE
AS

/*****************************************************************************************************************
NAME:   dbo.trg_hello_world_last_mod
PURPOSE: Hello World - Last Modified By Trigger

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/26/2024   BIMWANGA      1. Built this script for EC IT 143


RUNTIME: 
1s

NOTES: 
Keep track of the last modified date for each row inthe table
 
******************************************************************************************************************/

UPDATE dbo.t_hello_world
    SET 
	 last_modified_date = GETDATE()
WHERE my_message IN
(
   SELECT DISTINCT 
            my_message
		FROM Inserted
);

SELECT GETDATE() AS my_date;