-- Wilson Ng
-- IS-361
-- Spring 2020
-- 02/11/2020

/* The count function takes in the flight column as an argument and count all the rows.
Output is the number of flights from the flights table. */
SELECT COUNT(flight)
FROM flights;

/* The count function takes in the flight column as an argument and count all the rows.
Output is the number of flights from the flights table, and grouped by each carrier. */
SELECT carrier, 
	COUNT(flight)
FROM flights
GROUP BY carrier;

/* The count function takes in the flight column as an argument and count all the rows.
Output is the number of flights from the flights table, and grouped by each carrier.
Further sorting the output by the number of flights in a descending manner. */
SELECT carrier, 
	COUNT(flight)
FROM flights
GROUP BY carrier
ORDER BY 2 DESC;

/* The count function takes in the flight column as an argument and count all the rows.
Output is the number of flights from the flights table, and grouped by each carrier.
Further sorting the output by the number of flights in a descending manner, and limiting results to five. */
SELECT carrier, 
	COUNT(flight)
FROM flights
GROUP BY carrier
ORDER BY 2 DESC
LIMIT 5;

/* The count function takes in the flight column as an argument and count all the rows.
Filtering out the rows that has distance less than 1000 miles.
Output is the number of flights from the flights table, and grouped by each carrier.
Further sorting the output by the number of flights in a descending manner, and limiting results to five. */
SELECT carrier,
	COUNT(flight) AS 'number_of_flights'
FROM flights
WHERE distance > 1000
GROUP BY carrier
ORDER BY 2 DESC
LIMIT 5;

-- List the number of flights per carrier in January, group by carrier.
SELECT carrier,
	COUNT(flight) AS 'flights in January'
FROM flights
WHERE month = 01
GROUP BY carrier
ORDER BY 1;


