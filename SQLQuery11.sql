CREATE PROCEDURE dbo.usp_hello_world_load
AS
/*****************************************************************************************************************
NAME:    dbo.v_hello_world_load;
PURPOSE: Creat the hello world - load view

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/14/2024   IMWANGA       1. Built this script for EC_IT143_W4.2


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
******************************************************************************************************************/

    BEGIN


        -- 1) Reload data

   TRUNCATE TABLE dbo.t_hello_world;

           INSERT INTO dbo.t_hello_world
             SELECT v.my_message
                  , v.current_date_time
               FROM dbo.v_hello_world_laod AS v;


-- 2) Review results
       
	   SELECT t.*
          FROM dbo.t_hello_world AS t;
   END;
   GO
