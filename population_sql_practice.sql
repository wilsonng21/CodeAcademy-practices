-- How many entries in the database are from Africa?
SELECT COUNT(*)
FROM countries
WHERE continent = 'Africa';

-- What was the total population of Oceania in 2005?
SELECT continent,
  SUM(population) as population,
  year
FROM population_years AS p
LEFT JOIN countries AS c
ON c.id = p.country_id
WHERE continent = 'Oceania' and year = 2005;

-- What is the average population of countries in South America in 2003?
SELECT continent,
  AVG(population),
  year
FROM population_years AS p
LEFT JOIN countries AS c
ON c.id = p.country_id
WHERE continent = 'South America' and year = 2003;

-- What country had the smallest population in 2007?
SELECT name,
  MIN(population) as smallest_population,
  year
FROM population_years AS p
LEFT JOIN countries AS c
ON c.id = p.country_id
WHERE year = 2007;

-- What is the average population of Poland during the time period covered by this dataset?
SELECT name,
  AVG(population)
FROM population_years AS p
LEFT JOIN countries AS c
ON c.id = p.country_id
WHERE name = 'Poland';

-- How many countries have the word "The" in their name?
SELECT COUNT(name) AS countries_with_the, 
  name
FROM countries
WHERE name LIKE '%The%';

-- What was the total population of each continent in 2010?
SELECT SUM(population),
  continent
FROM population_years AS p
LEFT JOIN countries AS c
ON c.id = p.country_id
WHERE year = 2010
GROUP BY continent;

