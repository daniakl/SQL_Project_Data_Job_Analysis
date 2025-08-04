SELECT
    skills_dim.skills AS skill,
   ROUND(avg(job_postings_fact.salary_year_avg)) AS avg_salary
FROM job_postings_fact
    INNER JOIN 
        skills_job_dim ON job_postings_fact.job_id=skills_job_dim.job_id
    INNER JOIN 
        skills_dim ON skills_job_dim.skill_id=skills_dim.skill_id
WHERE 
    job_postings_fact.job_title_short='Data Analyst'
    AND job_postings_fact.salary_year_avg IS NOT NULL
    AND job_country = 'Canada'
GROUP BY
    skill
ORDER BY
    avg_salary DESC
LIMIT 10;
