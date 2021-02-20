/*Q1 
SELECT COUNT(*) FROM data_analyst_jobs;
A 1793*/

/*Q2 
SELECT * FROM data_analyst_jobs
LIMIT 10;
A EXXONMobile*/

/*Q3a
SELECT COUNT(*) FROM data_analyst_jobs
WHERE location = 'TN';
A 21*/

/* Q3b
SELECT COUNT(*) From data_analyst_jobs
WHERE location = 'TN' or location = 'KY';
A 27*/

/* 3b in class
SELECT location, count(title)
FROM data_analyst_jobs
WHERE location IN ('TN,'KY')
GROUP BY location;*/

/* Q4
SELECT COUNT(*) FROM data_analyst_jobs
WHERE location = 'TN' and star_rating > '4';
A 3*/

/* Q5
SELECT COUNT(*) FROM data_analyst_jobs
WHERE review_count BETWEEN 500 and 1000;
A 151*/

/* Q6 
SELECT location AS state,ROUND(AVG(star_rating),2) AS avg_rating
FROM data_analyst_jobs
WHERE company IS NOT NULL AND star_rating IS NOT NULL
GROUP BY state
ORDER BY avg_rating DESC;
A NE*/

/*Q6 in class
SELECT location as state, ROUND(AVG(star_rating), 2) as avg_stars
FROM (SELECT DISTINCT company, location, star_rating
	FROM data_analyst_jobs
	WHERE location IS NOT NULL and star_rating IS NOT NULL) AS sub
GROUP BY location
ORDER BY avg_stars DESC;*/


/* Q7
SELECT DISTINCT(title)
FROM data_analyst_jobs;
A 881*/

/* Q8
SELECT DISTINCT(title)
FROM data_analyst_jobs
WHERE location = 'CA';
A 230*/

/* Q9 
SELECT company, ROUND(AVG(star_rating),2) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000 AND company IS NOT NULL
GROUP BY company
ORDER BY avg_rating DESC;
A 40*/

/* Q9 Andrew
SELECT DISTINCT company, ROUND(star_rating, 1) as star_rating
FROM data_analyst_jobs
WHERE review_count > 5000
	AND company IS NOT NULL
ORDER BY star_rating DESC, company;*/

/* Q9 Brenda
SELECT company, avg_star_rating, (SELECT COUNT(DISTINCT(company)) 
									FROM data_analyst_jobs 
									WHERE review_count >= 5000 AND company IS NOT NULL)
	FROM 
 		(SELECT company, ROUND(AVG(star_rating),2) AS avg_star_rating
		FROM data_analyst_jobs 
		WHERE review_count >= 5000 AND company IS NOT NULL
 		GROUP BY company) AS sub
	GROUP BY 1,2
	ORDER BY avg_star_rating DESC*/




/* Q10
SELECT company,ROUND(AVG(star_rating),2) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000 AND company IS NOT NULL
GROUP BY company
ORDER BY avg_rating DESC;
A UNILEVER 4.20*/

/* Q11
SELECT title FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';
A 1669*/

 /* Q11 Andrew
 SELECT DISTINCT title, (SELECT COUNT(DISTINCT title) as title_count FROM data_analyst_jobs WHERE title ILIKE '%analyst%')
FROM data_analyst_jobs
WHERE title ILIKE '%analyst%';*/

 /*Q11 Joshua
 Select title, COUNT(*) over()
 from data_analyst_jobs
 WHERE UPPER(title) LIKE '%ANALSYST%'*/
/*Q12
SELECT DISTNCT title FROM data_analyst_jobs
WHERE title NOT ILIKE '%analyst%'
AND title NOT ILIKE '%analytics%';
A 4, Tableau*/
 

/* BONUS 
SELECT DISTINCT(domain),COUNT(title) AS hard_to_fill
FROM data_analyst_jobs
WHERE skill ILIKE '%SQL%'
AND days_since_posting > 21
AND domain IS NOT NULL
GROUP BY domain
ORDER BY hard_to_fill DESC; A Internet&software-62,Banks&financial-61,Consulting&Business-57
*/




