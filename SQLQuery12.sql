-- Q: What is the current date and time?

-- A: Let's ask SQL Server and find out...
SELECT t.*
       FROM dbo.t_hello_world AS t

EXEC dbo.usp_hello_world_load;