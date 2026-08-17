
-- Finds the top 10 highest-paying Data Analyst jobs.
SELECT 
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
