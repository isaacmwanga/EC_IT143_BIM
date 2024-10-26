--Q2: How to keep track of when a record was last modified？
--A2: Maybe use an after update trigger


-- Q3: Did it work?
-- A3: Well, lets see...yup


-- Remove stuff if it is already there

     DELETE FROM dbo.t_hello_world
       WHERE my_message IN('Hello World2', 'Hello World3', 'Hello World4');

    -- lOAD TEST ROWS
	INSERT INTO dbo.t_hello_world(my_message)
	VALUES('Hello wordld2'), ('Hello world3');

	--see if the trigger worked
	SELECT t.*
	   FROM dbo.t_hello_world AS t;

    -- Try it again 
	UPDATE dbo.t_hello_world SET my_message = 'Hello world4'
	 WHERE my_message = 'Hello World3';

	-- see it the trigger worked
	SELECT t.*
	    FROM dbo.t_hello_world AS t;

	ALTER TABLE dbo.t_hello_world
	ADD last_modified_by VARCHAR(50) DEFAULT SUSER_NAME();