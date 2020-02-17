-- Below query selects all columns from the planes table.
SELECT *
FROM planes;

/* At first, I tried running the query to update the planes table 
to set the year to 2013 where the value is null. However, the error said I had to turn
off the safety. Below query turns off the safe update. Then I proceed to update the planes
table and turn the safety back on with SET SQL_SAFE_UPDATES = 1 */
SET SQL_SAFE_UPDATES=0;

UPDATE planes
SET year = 2013
WHERE year IS NULL;

SET SQL_SAFE_UPDATES=1;

-- This query inserts new data into the planes table.
-- The VALUES keyword allows injection of data that corresponds to the table columns.
INSERT INTO planes (tailnum, year, type, manufacturer, model, engines, seats, speed, engine)
VALUES ('N15501', 2013, 'fixed wing single engine', 'BOEING', 'A222-101', 3, 100, NULL, 'Turbo-fan');

SET SQL_SAFE_UPDATES=0;

DELETE FROM planes
WHERE tailnum = 'N15501';

SET SQL_SAFE_UPDATES=1;

-- This query below confirms the record with tailnum N15501 was successfully deleted from the table.
SELECT *
FROM planes
WHERE tailnum = 'N15501';


