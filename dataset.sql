CREATE database prtkintern;
use prtkintern;

CREATE TABLE job_seekers (
    seeker_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);
insert into job_seekers values
(101, 'Adam Roy', 'adamroy101@mail.com'),
(102, 'Alice Robin' , 'alicerobin102@mail.com'),
(103, 'Charlie Dax', 'charliedax103@mail.com'),
(104, 'Peter chrill', 'peterchirll104@mail.com');  

CREATE TABLE companies (
    company_id INT PRIMARY KEY,
    company_name VARCHAR(100),
    industry VARCHAR(50)
);
insert into companies values
(1, 'Techcrop', 'New York'),
(2, 'FinServe', 'Chicago'),
(3, 'HealthPlus', 'Boston');

CREATE TABLE jobs (
    job_id INT PRIMARY KEY,
    company_id INT,
    title VARCHAR(100),
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);
insert into jobs values
(1001, 1, 'Software Engineer'),
(1002, 2, 'Data Analyst'),
(1003, 3, 'System Admin'),
(1004, 2, 'HR Manager');

CREATE TABLE applications (
    application_id INT PRIMARY KEY,
    seeker_id INT,
    job_id INT,
    status VARCHAR(20),
    FOREIGN KEY (seeker_id) REFERENCES job_seekers(seeker_id),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);
insert into applications values
(5001, 101, 1001, 'Submitted'),
(5002, 104, 1002, 'Interview'),
(5003, 103, 1004, 'Rejected'),
(5004, 102, 1003, 'Offer');

select * from job_seekers as js;
select * from companies as c;
select * from jobs as j;
select * from applications as a;

-- Inner join
-- List all job applications with applicant and job details
SELECT
    a.application_id,
    js.name AS applicant_name,
    j.title AS job_title,
    c.company_name AS comp_name,
    a.status
FROM
    applications a
    INNER JOIN job_seekers js ON a.seeker_id = js.seeker_id
    INNER JOIN jobs j ON a.job_id = j.job_id
    INNER JOIN companies c ON j.company_id = c.company_id;

-- Left Join
-- List all job seekers and their applications (if any)
SELECT
    js.name AS applicant_name,
    a.application_id,
    a.status
FROM
    job_seekers js
    LEFT JOIN applications a ON js.seeker_id = a.seeker_id;

-- Right Join
-- List all jobs and any applications received
SELECT
    j.title AS job_title,
    a.application_id,
    a.status
FROM
    jobs j
    RIGHT JOIN applications a ON j.job_id = a.job_id;
    
-- Full Join
-- List all job seekers and jobs, showing applications where they exist
SELECT
    js.name AS applicant_name,
    j.title AS job_title,
    a.status
FROM
    job_seekers js
	LEFT JOIN applications a ON js.seeker_id = a.seeker_id
    LEFT JOIN jobs j ON a.job_id = j.job_id
UNION
SELECT
    js.name AS applicant_name,
    j.title AS job_title,
    a.status
FROM
    jobs j
	RIGHT JOIN applications a ON a.job_id = j.job_id
    RIGHT JOIN job_seekers js ON a.seeker_id = js.seeker_id;
