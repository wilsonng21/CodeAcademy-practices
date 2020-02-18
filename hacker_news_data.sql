SELECT title, score
FROM hacker_news
ORDER BY score DESC
LIMIT 5;
 
SELECT SUM(score)
FROM hacker_news;
 
SELECT user, SUM(score)
FROM hacker_news
GROUP BY user
HAVING score > 200;
 
SELECT (517 + 309 + 304 + 282) / 6366.0;
 
SELECT user, COUNT(*)
FROM hacker_news
  WHERE url LIKE 'https://www.youtube.com/watch
  v=dQw4w9WgXcQ'
GROUP BY 1
ORDER BY 2 DESC;
 
SELECT COUNT(*),
CASE
   WHEN url LIKE '%github%' THEN 'Github'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
     ELSE 'Other'
   END AS 'Source'
FROM hacker_news
GROUP BY 2;

SELECT timestamp
FROM hacker_news
LIMIT 10;

SELECT strftime('%H', timestamp) AS 'Hour',
  ROUND(AVG(score), 2) AS 'Average Score',
  COUNT(*) AS 'Number of Stories'
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1
ORDER BY 1;
