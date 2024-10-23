/*****************************************************************************************************************
NAME:    Mwanga benamoyo isaac
PURPOSE: My MyFC Analysis

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/19/2024   IMWANGA       1. Built this script for EC IT143 W5.2


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
******************************************************************************************************************/

-- Q1: Could you provide the names of the players with the lowest salaries on each team? (Me)

SELECT team, player, salary
FROM (
    SELECT team, player, salary,
           ROW_NUMBER() OVER (PARTITION BY team ORDER BY salary ASC) as rn
    FROM players
) as ranked
WHERE rn = 1;

-- Q2: What is the average age and nationality of the top 10 players in terms of goals scored in the last season? ( authored BY Thu Okka)

SELECT 
    AVG(age) AS average_age,
    nationality,
    COUNT(*) AS player_count
FROM (
    SELECT 
        player_id, 
        age, 
        nationality
    FROM players
    WHERE season = 'last_season'
    ORDER BY goals_scored DESC
    LIMIT 10
) AS top_players
GROUP BY nationality;


-- Q3:How can we increase the club’s revenue streams beyond matchday and broadcasting rights? ( authored BY Edmund Nettey Ababio)

SELECT experience_type, SUM(fee) AS total_revenue
FROM fan_experiences
GROUP BY experience_type;

-- Q4:The team managers want to know how much each team is spending on their players. Can you find out the total salary expense for each team this month, and which team is spending the most (  authored BY Catherine Kivindu)

SELECT 
    team_id, 
    SUM(monthly_salary) AS total_salary_expense
FROM 
    player_salaries
WHERE 
    MONTH(salary_date) = MONTH(CURDATE())
    AND YEAR(salary_date) = YEAR(CURDATE())
GROUP BY 
    team_id
ORDER BY 
    total_salary_expense DESC;

SELECT GETDATE() AS my_date;