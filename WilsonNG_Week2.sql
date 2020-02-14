SELECT *
FROM planes;
-- This selects all columns from the table 'planes'.

SELECT *
FROM weather; 
-- This selects all columns from the table 'weather'.

SELECT CONCAT(month, '/', day, '/', year) AS DATE
FROM weather;
-- This concatenate the columns in the format month, day, year. Then gives the column an alias as DATE.

SELECT *
FROM planes
ORDER BY seats DESC;
-- This selects all columns from the table 'planes', and order the rows by seats in a descending manner.

SELECT *
FROM planes
WHERE engine = 'Reciprocating';
-- This selects all columns from the table 'planes' where the engine column indicates 'reciprocating'.

SELECT *
FROM flights
LIMIT 5;
-- This selects all columns from the table 'flights' and limit the rows to five.

SELECT *
FROM flights
ORDER by air_time DESC
LIMIT 5;
-- This selects all columns from the table 'flights' and order the rows according to air_time in a descending manner.

SELECT *
FROM flights
WHERE carrier = 'DL'
	AND air_time IS NOT NULL
ORDER by air_time ASC
LIMIT 5;
/* This selects all columns from the table 'flights' and filter carriers out other than 'DL' 
and where air_time is not null. The rows are ordered by air_time in an ascending manner. */

SELECT *
FROM flights
WHERE carrier = 'AS'
	AND year = 2013
    AND month = 6
    AND day BETWEEN 1 AND 3;
/* This selects all columns from the table 'flights' and chooses carrier with 'AS'.
Other conditions to meet are the year, month and day columns. */
    
SELECT *
FROM airlines
WHERE name LIKE '%America%';
-- This selects all columns from the table 'airlines' and look for names that contain 'America'. 

SELECT COUNT(*)
FROM flights
WHERE dest = 'MIA';
-- The count function sums up all flights with the destination equal to 'MIA'.

SELECT COUNT(*)
FROM flights
WHERE dest = 'MIA'
	AND year = 2013
    AND month = 1;
-- This sums up all flights with destination equal to 'MIA' and also has to satisfy the year and month requirement.
    
SELECT COUNT(*)
FROM flights
WHERE dest = 'MIA'
	AND year = 2013
    AND month = 7;
-- After running this query and the above query, the month of January had more flights to Miami than July.
    
SELECT AVG(alt)
FROM airports;
-- The average function calculates the average of the alt column from the table 'airports'.
