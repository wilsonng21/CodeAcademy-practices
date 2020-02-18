SELECT *
FROM met
LIMIT 10;
 
SELECT COUNT(*)
FROM met
WHERE department = 'American Decorative Arts';
 
SELECT COUNT(*)
FROM met
WHERE category LIKE '%celery%';
 
SELECT title, medium, date
FROM met
ORDER BY date
LIMIT 50;
 
SELECT title,
  country,
  COUNT(*)
FROM met
WHERE country IS NOT NULL
GROUP BY country
ORDER BY 3 DESC;
 
SELECT category, 
  COUNT(*)
FROM met
GROUP BY 1
HAVING COUNT(*) > 100;
 
SELECT medium, 
  COUNT(*)
FROM met
WHERE medium LIKE '%gold%' 
  OR medium LIKE '%silver%'
GROUP BY 1
ORDER BY 2 DESC;
  
 
