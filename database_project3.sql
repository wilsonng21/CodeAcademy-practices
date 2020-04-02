CREATE TABLE population (
    country VARCHAR(255),
    year INT,
    population INT
);

LOAD DATA LOCAL INFILE '/home/wn15126521/Downloads/tb/population.csv'
INTO TABLE population
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

SELECT tb.country AS Country, tb.year AS Year,
SUM(IFNULL(child, 0)+IFNULL(adult, 0)+IFNULL(elderly, 0))/population.population AS Rate
FROM tb, population
WHERE population.country = tb.country
GROUP BY tb.country, tb.year,population.population;
