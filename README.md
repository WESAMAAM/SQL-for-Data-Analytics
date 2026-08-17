# SQL for Data Analytics — Learning & Practical Project

## Introduction

I recently completed **SQL for Data Analytics - Learn SQL in 4 Hours** by **Luke Barousse**.

The goal of taking this course was to build a solid foundation in SQL and learn how SQL can be used for data analysis.

Rather than stopping after completing the course, I wanted to apply what I learned to a practical project using a real-world dataset.

This repository contains both **my SQL learning journey from the course** and the **project I built to practice those skills**.

![SQL Course](https://github.com/WESAMAAM/SQL-for-Data-Analytics/blob/main/images/Screenshot%202026-08-17%20034631.png?raw=true)

---

# What I Learned

Throughout the course, I learned the fundamentals of SQL and how to use them to work with and analyze data.

### Basic SQL

I started by learning how to retrieve and work with data using:

* `SELECT`
* `FROM`
* `WHERE`
* `ORDER BY`
* `LIMIT`

These were the building blocks for writing SQL queries and getting the specific data I needed.

### Filtering and Sorting Data

I learned how to filter datasets based on specific conditions and sort the results.

For example, I learned how to:

* Filter rows using `WHERE`
* Combine conditions using `AND` and `OR`
* Sort results using `ORDER BY`
* Limit the number of returned rows using `LIMIT`

### Aggregate Functions

I learned how to summarize data using aggregate functions such as:

* `COUNT()`
* `AVG()`
* `SUM()`
* `MIN()`
* `MAX()`

These functions helped me move from simply looking at individual rows to actually analyzing the data.

### Grouping Data

I learned how to use:

* `GROUP BY`
* `HAVING`

This allowed me to group data and perform calculations for each group instead of treating the entire dataset as one group.

### Joining Tables

One of the most important concepts I learned was how to work with multiple tables.

I practiced using:

* `INNER JOIN`
* `LEFT JOIN`

This helped me understand how related tables can be combined to answer questions that cannot be answered using a single table.

### Common Table Expressions

I also learned how to use **Common Table Expressions (CTEs)** with `WITH`.

CTEs helped me break more complicated queries into smaller and easier-to-understand steps.

### Writing SQL for Analysis

The course also helped me understand that SQL is not just about knowing the syntax.

The important part is being able to take a question, understand what data is needed, and then build a query that can answer that question.

That became especially important when I started working on the project below.

---

# From Learning to Practice

After completing the course, I wanted to test whether I could use what I had learned without simply following a tutorial.

So I worked with a dataset containing job postings and information about companies and required skills.

I used PostgreSQL to build the database and then wrote SQL queries to explore the **Data Analyst job market**.

The project focuses on questions such as:

* What are the highest-paying Data Analyst jobs?
* Which skills are most commonly requested?
* Which skills are associated with higher salaries?
* Which skills have both strong demand and higher average salaries?

This was the point where I started using SQL as an analysis tool rather than just practicing individual SQL commands.

---

# Practical Project

## Data Analyst Job Market Analysis

The project uses four main tables:

* `job_postings_fact`
* `company_dim`
* `skills_dim`
* `skills_job_dim`

These tables contain information about job postings, companies, and the skills required for different jobs.

I prepared the database using SQL and then created five analysis queries.

## Project Structure

```text
SQL/
│
├── csv/
│   ├── company_dim (1).csv
│   ├── job_postings_fact (1).csv
│   ├── skills_dim (1).csv
│   └── skills_job_dim (1).csv
│
├── postgres/
│   ├── postgres.session.sql
│   └── sql_query.session.sql
│
├── prepration/
│   ├── 1_create_database.sql
│   ├── 2_create_tables.sql
│   ├── 3_modify_tables.sql
│   └── CREATE DATABASE sql_query;.sql
│
└── project_sql/
    ├── query_1.sql
    ├── query_2.sql
    ├── query_3.sql
    ├── query_4.sql
    └── query_5.sql
```
![Project Structure](https://github.com/WESAMAAM/SQL-for-Data-Analytics/blob/main/images/Screenshot%202026-08-17%20033601.png?raw=true).
![Project Structure](https://github.com/WESAMAAM/SQL-for-Data-Analytics/blob/main/images/Screenshot%202026-08-17%20034145.png?raw=true)


---

# The SQL Queries

### Query 1 — Highest-Paying Data Analyst Jobs

I used filtering, sorting, joins, and `LIMIT` to find the top 10 highest-paying Data Analyst jobs that allow working from home.

![Query 1](https://github.com/WESAMAAM/SQL-for-Data-Analytics/blob/main/images/Screenshot%202026-08-17%20033653.png?raw=true)

### Query 2 — Skills in High-Paying Jobs

I then used joins to find the skills associated with the highest-paying Data Analyst positions.

This allowed me to connect job information with the skills required for those jobs.

![Query 2](https://github.com/WESAMAAM/SQL-for-Data-Analytics/blob/main/images/Screenshot%202026-08-17%20042900.png?raw=true)

### Query 3 — Most In-Demand Skills

I used `COUNT()`, `GROUP BY`, and `ORDER BY` to find the skills that appeared most frequently in Data Analyst job postings.

The top five were:

| Skill    | Job Count |
| -------- | --------: |
| SQL      |    92,628 |
| Excel    |    67,031 |
| Python   |    57,326 |
| Tableau  |    46,554 |
| Power BI |    39,468 |

![Query 3](https://github.com/WESAMAAM/SQL-for-Data-Analytics/blob/main/images/Screenshot%202026-08-17%20034057.png?raw=true)

Seeing **SQL at the top of the results** was especially interesting because SQL was the main subject I had just spent time learning through the course.

### Query 4 — Average Salary by Skill

(I used `AVG()` and grouping to calculate the average salary associated with different skills

![Query 4](https://github.com/WESAMAAM/SQL-for-Data-Analytics/blob/main/images/Screenshot%202026-08-17%20043003.png?raw=true).

This allowed me to look at the relationship between individual skills and salary rather than only looking at how frequently they appeared.

### Query 5 — High-Demand and High-Paying Skills

Finally, I combined skill demand and salary to identify skills that have both strong demand and an average salary of at least $90K.

This query required combining multiple pieces of the analysis instead of simply looking at one column.

![Query 5](https://github.com/WESAMAAM/SQL-for-Data-Analytics/blob/main/images/Screenshot%202026-08-17%20043033.png?raw=true)

---

# What I Took Away From the Project

The biggest lesson from this project was the difference between **learning SQL concepts and actually using them**.

While taking the course, I was learning things like `JOIN`, `GROUP BY`, aggregate functions, and CTEs individually.

In the project, I had to decide **when and why to use them** to answer a specific question.

For example:

> "What are the most in-demand skills?"

became a SQL problem involving joins, grouping, counting, and sorting.

This made the concepts I learned during the course much clearer to me.

I also learned that writing a query is only part of the process. Understanding what the results mean is just as important.

---

# Key Results

Some of the main findings from the project were:

* SQL was the most frequently requested skill in the Data Analyst job postings in this dataset.
* Excel, Python, Tableau, and Power BI were also among the most requested skills.
* There were significant differences in salary between Data Analyst positions.
* Looking at both demand and salary provides a more useful perspective than looking at either one alone.

---

# Tools

* **PostgreSQL**
* **SQL**
* **VS Code**
* **CSV**

---

# Conclusion

This project represents the step I took after completing my SQL course to turn what I learned into practical experience.

The course gave me the foundation in SQL.

The project gave me the opportunity to use that foundation to work with multiple tables, write analytical queries, investigate a dataset, and draw conclusions from the results.

For me, the main goal was not just to finish a SQL course, but to be able to say:

**"I learned SQL, and then I used it."**
