WITH top_paying_jobs AS (
    SELECT 
        job_id,
        job_title,
        salary_year_avg
    FROM job_postings_fact
    WHERE 
        job_title_short = 'Data Analyst' 
        AND job_country = 'Canada'
        AND salary_year_avg IS NOT NULL 
    ORDER BY salary_year_avg DESC
    LIMIT 10      
)

SELECT
    top_paying_jobs.job_id, 
    job_title, 
    salary_year_avg,
    skills_dim.skills
FROM top_paying_jobs   
INNER JOIN skills_job_dim ON top_paying_jobs.job_id=skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
/* This join allows us to list the skills associated with each of these top-paying jobs. 
We only want to include jobs where there’s a skill associated with it. */
ORDER BY 
    salary_year_avg DESC;