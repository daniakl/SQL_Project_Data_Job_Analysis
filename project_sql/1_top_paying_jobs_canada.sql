SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    job_country

FROM job_postings_fact
WHERE 
    job_title_short = 'Data Analyst'
   AND salary_year_avg IS NOT NULL
   AND job_country = 'Canada'
ORDER BY salary_year_avg DESC
LIMIT 10