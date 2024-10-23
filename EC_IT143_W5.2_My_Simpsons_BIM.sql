/*****************************************************************************************************************
NAME:    Mwanga benamoyo isaac
PURPOSE: My Simpsons Analysis

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/19/2024   IMWANGA       1. Built this script for EC IT143 W5.2


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
******************************************************************************************************************/

-- Q1: Homer and Marge want to track their spending habits over time. Can you find out the total amount they have spent on household-related expenses this year, and determine which family member has made the most transactions in this category? ( authored by Catherine Kivindu)

SELECT family_member, COUNT(*) AS transaction_count
FROM expenses
WHERE category = 'household'
  AND YEAR(date) = YEAR(CURDATE())
GROUP BY family_member
ORDER BY transaction_count DESC
LIMIT 1;

-- Q2: Could you provide details of the most recently hired players, including their IDs, jersey numbers, positions, and starting salaries? (Me)

SELECT player_id, jersey_number, position, starting_salary
FROM players
ORDER BY hire_date DESC
LIMIT 10;  
-- Adjust the limit as needed to get the desired number of recent hires


-- Q3: Could you explain the type of relationship between the tables in this database and how this relationship can be leveraged to enhance shareholder benefits? (Me)

     SELECT character_name, AVG(sentiment_score) AS average_sentiment
       FROM script_lines
   JOIN characters ON script_lines.character_id = characters.character_id
    GROUP BY character_name
        ORDER BY average_sentiment DESC;

-- Q4: Are they any common open jobs available in the community and which can be readily available? ( authered by Wisdom Etta)





 
