# JOINS-PRACTICE
*COMPANY :* CODETECH IT SOLUTION

*NAME :* WALKE PRATIK BABU

*INTERN ID :* CTIS4099

*DOMAIN :* SQL

*DURATION :* 4 WEEEKS

*MENTOR :* NEELA SANTHOSH KUMAR


The Join Practice task is designed to strengthen understanding of how relational databases allow us to combine information across multiple tables. In the ##prtkintern database, we have four core entities: job seekers, companies, jobs, and applications. Each table represents a distinct aspect of the recruitment process, but the real value comes when we connect them together. SQL joins are the mechanism that enables this connection, allowing us to answer complex questions that cannot be solved by looking at a single table in isolation.

An INNER JOIN is the most common type of join. It returns only those records where there is a match in both tables. For example, if we want to list all job seekers who have applied for jobs, we can join the job_seekers table with the applications table on the seeker_id. This ensures that only job seekers with applications are displayed. INNER JOIN is useful when we are interested in relationships that exist in both datasets.

A LEFT JOIN expands this by returning all records from the left table, even if there is no match in the right table. In our case, if we want to see all job seekers and whether they have applied for jobs, a LEFT JOIN between job_seekers and applications will show every seeker, with application details where available. Those who have not applied will still appear, but with NULL values in the application columns. This is particularly useful for identifying gaps, such as job seekers who are registered but inactive.

A RIGHT JOIN works in the opposite way, ensuring all records from the right table are included. For example, if we want to see all jobs and the seekers who applied, a RIGHT JOIN between applications and jobs will list every job, even if no one has applied yet. This helps highlight opportunities that remain unfilled.

A FULL OUTER JOIN combines both approaches, returning all records from both tables and filling in NULLs where matches do not exist. This is less commonly used but can be powerful when we want a complete picture of both sides of a relationship. For instance, we could use it to see all job seekers and all jobs, regardless of whether applications exist, giving us a holistic view of the recruitment landscape.
A CROSS JOIN is different in that it produces a Cartesian product of rows between tables. If we cross join job_seekers and jobs, we get every possible combination of seeker and job. While this is rarely used in practice due to the large output, it can be helpful for generating test data or exploring all potential matches.

Through these join operations, we can answer practical questions such as: Which job seekers have applied to which jobs? Which companies have open positions but no applicants? Which seekers are registered but inactive? Which industries are attracting the most applications? Each join type provides a different lens through which to analyze the data.

This task emphasizes not only writing correct SQL syntax but also understanding the logic behind each join. By practicing with INNER, LEFT, RIGHT, FULL, and CROSS joins, we gain the ability to navigate relational data effectively and extract insights that drive decision‑making. The deliverables include SQL scripts demonstrating each join type and a report explaining the outputs, ensuring clarity and reproducibility for future reference.
