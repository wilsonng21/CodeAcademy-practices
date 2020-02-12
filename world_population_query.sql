
-- This is the first query:

SELECT DISTINCT year from population_years;

-- Add your additional queries below:

SELECT country, population, year
FROM population_years
WHERE country = 'Gabon'
ORDER BY population DESC;

SELECT country, population
FROM population_years
WHERE year = 2005
ORDER BY population ASC
LIMIT 10;

SELECT DISTINCT country
FROM population_years
WHERE year = 2010
  AND population > 100;
  
SELECT COUNT(DISTINCT country)
FROM population_years
WHERE country LIKE '%Islands%';

SELECT country, population
FROM population_years
WHERE country = 'Indonesia'
AND year = 2000;

SELECT country, population
FROM population_years
WHERE country = 'Indonesia'
AND year = 2010;
