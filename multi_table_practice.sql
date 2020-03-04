SELECT * FROM trips;

SELECT * FROM riders;

SELECT * FROM cars;

/* left join between trips and riders where trips.rider_id has to match riders.id */
SELECT trips.id,
  trips.date,
  rider_id,
  riders.username
FROM trips
LEFT JOIN riders
ON trips.rider_id = riders.id;

/* join keyword is also INNER JOIN, this creates a link between trips and cars table where the cars.id have to match car_id */
SELECT *
FROM trips
JOIN cars
ON trips.car_id = cars.id;

/* UNION stacks two tables together */
SELECT *
FROM riders
UNION
SELECT *
FROM riders2;

/* to find average cost of all trips */
SELECT AVG(cost)
FROM trips;

/* queries users from both tables that satisfies the condition of total trips that's less than 500*/
SELECT *
FROM riders
WHERE total_trips < 500
UNION
SELECT *
FROM riders2
WHERE total_trips < 500;

SELECT COUNT(*)
FROM cars
WHERE status = 'active';

SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;

