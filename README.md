TO do: update content later

# Introduction
In this SQL portfolio project, the analysis aimed towards getting a better understanding of the job market by focusing on job postings for Data Analysts. This project explores the top-paying jobs, the most in-demand skills and observes the correlation between the high in-demand skills and the average salary linked to them specifically for the Data analytics field. 
# Background
This project was a part of an SQL online class seeking to find a deeper understanding of the Data Analyst job requirements and benefits. It created a better understanding of the most in-demand skills and the pay related to said skills making my future job search in the field more targeted, specific and effective. 
The data set used for this analysis has been provided in Luke Barousse’s [SQL course](https://www.lukebarousse.com/sql). This Data includes details on job titles, salaries, location, and required skills. The course is heavily foccused on the US market, thus making the results not completly accurate to my reality, which is why I will be comparing some of the overall results to the canadian reality. 
The questions I wanted to answer through my SQL queries were:
1. What are the top-paying data analyst jobs?
2. What skills are required for these top-paying jobs?
3. What skills are most in demand for data analysts?
4. Which skills are associated with higher salaries?
5. What are the most optimal skills to learn for a data analyst looking to maximize job market value?
# Tools I used
In this project, I used a variety of tools to conduct my analysis and to add visualizations to some part:
-**SQL**(Structured Query Language): Used to interact with the database, extract insights, and answer my key questions through queries.
-**PostgreSQL**: As the database management system, PostgreSQL allowed me to store, query, and manipulate the job posting data.
-**Visual Studio Code **(VS Code):This open-source administration and development platform helped me manage the database and execute SQL queries.
# The Analysis
Each query for this project was done with the objective of finding specific aspects of the data analyst job market. Here is the approach for each question:
### 1. Top Paying Data Analyst Jobs 
To identify the highest-paying roles, I filtered data analyst positions by average yearly salary and location, focusing on remote jobs. This query highlights the high paying opportunities in the field.
```SQL
SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date

FROM job_postings_fact
WHERE 
    job_title = 'Data Analyst'
   AND salary_year_avg IS NOT NULL
   AND job_location = 'Anywhere'
ORDER BY salary_year_avg DESC
LIMIT 10;
```

