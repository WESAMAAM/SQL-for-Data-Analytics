
-- Shows the skills required for the highest-paying Data Analyst jobs.
WITH query_1 AS 

    (
    SELECT 
        job_postings_fact.job_id,
        job_postings_fact.job_title AS job_title,
        company_dim.name AS company,
        job_postings_fact.job_country,
        job_postings_fact.job_via,
        job_postings_fact.salary_year_avg

    FROM 
        job_postings_fact

    LEFT JOIN 
        company_dim ON 
            job_postings_fact.company_id = company_dim.company_id

    WHERE
        job_postings_fact.job_work_from_home = 'TRUE' 
        AND
        job_postings_fact.job_title_short = 'Data Analyst' 
        AND
        job_postings_fact.salary_year_avg IS NOT NULL

    ORDER BY 
        job_postings_fact.salary_year_avg 
            DESC

    LIMIT 
        10
    )

SELECT 
    skills_dim.skills,
    COUNT(skills_dim.skills) AS count_skills
    
FROM 
    query_1

INNER JOIN 
    skills_job_dim 
        ON  query_1.job_id =  skills_job_dim.job_id
INNER JOIN 
    skills_dim 
        ON skills_job_dim.skill_id = skills_dim.skill_id

GROUP BY 
    skills_dim.skills

ORDER BY 
    count_skills 
            DESC

LIMIT
    10
