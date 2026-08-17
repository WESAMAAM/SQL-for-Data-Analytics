
-- Finds skills that are both in demand and associated with high average salaries.
WITH Data_Analyst_jobs AS 

    (
    SELECT *

    FROM 
        job_postings_fact

    INNER JOIN 
        skills_job_dim ON 
            skills_job_dim.job_id = job_postings_fact.job_id
    INNER JOIN 
        skills_dim ON 
            skills_dim.skill_id = skills_job_dim.skill_id

    WHERE 
        job_postings_fact.job_title_short = 'Data Analyst'

    )

SELECT
    skills,
    COUNT (*) AS skill_demand,
    ROUND(AVG(salary_year_avg), 0) AS salary_avg

FROM 
    Data_Analyst_jobs

GROUP BY 
    skills

HAVING 
    AVG(salary_year_avg)  IS NOT NULL 
    AND
    AVG(salary_year_avg) >= 90000

ORDER BY 
    skill_demand 
        DESC,
    salary_avg 
        DESC

    LIMIT
        25

    




