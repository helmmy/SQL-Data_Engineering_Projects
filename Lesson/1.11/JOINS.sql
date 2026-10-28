SELECT
    COUNT(*)
FROM    
    job-job_postings_fact;



SELECT
    jpf.job_id,
    jpf.job_title_short,
    cd.company_id,
    cd.name AS company_name,
    jpf.job_location
FROM
    job_postings_fact AS jpf
LEFT JOIN company_dim AS cd
    ON jpf.company_id = cd.company_id;


SELECT
    jpf.job_id,
    jpf.job_title_short,
    cd.company_id,
    cd.name AS company_name,
    jpf.job_location
FROM
    job_postings_fact AS jpf
RIGHT JOIN company_dim AS cd
    ON jpf.company_id = cd.company_id;

 SELECT
    jpf.job_id,
    jpf.job_title_short,
    cd.company_id,
    cd.name AS company_name,
    jpf.job_location
FROM
    job_postings_fact AS jpf
FULL OUTER JOIN company_dim AS cd
    ON jpf.company_id = cd.company_id;

/* FINAL EXAMPLE
        - WE ARE TRYING TO LINK OUR jpf table to our sjd table and then
        connect to our sd table using both LEFT JOIN, INNER JOIN & FUL JOIN
*/


SELECT *
FROM skills_job_dim
LIMIT 10;

SELECT * 
FROM skills_dim
LIMIT 10;

SELECT
    jpf.job_id,
    jpf.job_title_short,
    sjd.skill_id,
    sd.skills
FROM job_postings_fact AS jpf
LEFT JOIN skills_job_dim AS sjd
    ON jpf.job_id = sjd.job_id
LEFT JOIN skills_dim as sd
    ON sjd.skill_id = sd.skill_id;

SELECT
    jpf.job_id,
    jpf.job_title_short,
    sjd.skill_id,
    sd.skills
FROM job_postings_fact AS jpf
FULL JOIN skills_job_dim AS sjd
    ON jpf.job_id = sjd.job_id
FULL JOIN skills_dim as sd
    ON sjd.skill_id = sd.skill_id;