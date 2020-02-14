SELECT *
FROM airports
LIMIT 5;

SELECT AVG(alt)
FROM airports
WHERE faa IN ('JFK', 'LGA', 'EWR');

SELECT AVG(alt), 
	tz
FROM airports
GROUP BY tz
ORDER BY 1 DESC;

SELECT COUNT(tailnum),
	tailnum
FROM flights
WHERE tailnum IN ('N125UW','N848MQ','N328AA','N247JB')
	AND origin IN ('JFK', 'LGA', 'EWR')
GROUP BY tailnum
ORDER BY 1 DESC;

SELECT *
FROM planes
WHERE tailnum IN ('N125UW','N848MQ','N328AA','N247JB');


SELECT tailnum, year, month, day, dep_delay, arr_delay, dest
FROM flights 
WHERE year = 2013 AND month = 2 AND day BETWEEN 14 AND 17 AND
      tailnum IN ('N125UW','N848MQ','N328AA','N247JB')
ORDER BY tailnum;





