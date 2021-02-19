/*Q1 SELECT COUNT(*) FROM data_analyst_jobs; A 1793*/

/*Q2 SELECT * FROM data_analyst_jobs
LIMIT 10; A XTO Land Data Analyst*/

/*Q3a SELECT COUNT(*) FROM data_analyst_jobs
WHERE location = 'TN'; A 21*/

/* Q3b SELECT COUNT(*) From data_analyst_jobs
WHERE location = 'TN' or location = 'KY'; A 27*/

/* Q4 SELECT COUNT(*) FROM data_analyst_jobs
WHERE location = 'TN' and star_rating > '4'; A 3*/

/* Q5 SELECT COUNT(*) FROM data_analyst_jobs
WHERE review_count BETWEEN 500 and 1000; A 151*/

/* Q6 SELECT location AS state,AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
GROUP BY state
ORDER BY avg_rating DESC; A NE*/

/* Q7 SELECT DISTINCT(title)
FROM data_analyst_jobs; A 881*/

/* Q8 SELECT DISTINCT(title)
FROM data_analyst_jobs
WHERE location = 'CA'; A 230*/

SELECT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company;

select * from data_analyst_jobs
