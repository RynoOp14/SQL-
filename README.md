Task 4 – SQL for Data Analysis

Objective

This task demonstrates how to use SQL queries to extract, manipulate, and analyze structured data using MySQL. The dataset used is `student_info.csv`, which contains details about students’ academic performance and demographics.



Dataset Description

**File:** `student_info.csv`

| Column Name              | Description                        |
| ------------------------ | ---------------------------------- |
| student\_id              | Unique identifier for each student |
| name                     | Student’s full name                |
| gender                   | Gender of the student              |
| age                      | Age of the student                 |
| grade\_level             | Grade/class level of the student   |
| math\_score              | Mathematics score                  |
| reading\_score           | Reading score                      |
| writing\_score           | Writing score                      |
| attendance\_percentage   | Attendance percentage              |
| parent\_education\_level | Parent’s highest education level   |


Tools Used

MySQL for database operations
CSV dataset for import
GitHub for submission and version control


Steps Performed

1. Create Table

Created a table in MySQL with appropriate field types:

```sql
CREATE TABLE student_info (
    student_id TEXT,
    name TEXT,
    gender TEXT,
    age INT,
    grade_level INT,
    math_score INT,
    reading_score INT,
    writing_score INT,
    attendance_percentage FLOAT,
    parent_education_level TEXT
);

2. SQL Queries Implemented

a. Basic SELECT + WHERE + ORDER BY

```sql
SELECT name, math_score
FROM student_info
WHERE math_score > 80
ORDER BY math_score DESC;
```

b. GROUP BY + Aggregate

```sql
SELECT gender, AVG(math_score) AS avg_math
FROM student_info
GROUP BY gender;
```

 c. JOIN Example

```sql
SELECT s.name, c.class_name
FROM student_info s
INNER JOIN class_info c
ON s.grade_level = c.grade_level;
```

d. Subquery

```sql
SELECT name, math_score
FROM student_info
WHERE math_score > (SELECT AVG(math_score) FROM student_info);
```

 e. Create View

```sql
CREATE VIEW top_students AS
SELECT name, (math_score + reading_score + writing_score)/3 AS avg_score
FROM student_info
ORDER BY avg_score DESC
LIMIT 5;
```

f. Index for Optimization

```sql
CREATE INDEX idx_grade_level ON student_info(grade_level);
```


#Files in Repository

* `student_info.csv` – dataset file
* `queries.sql` – SQL queries used in this task
* `screenshots/` – folder containing screenshots of query outputs
* `README.md` – this documentation



# Author

Name: Ujwal Ishwar Rathod
Role: Data Analyst Intern


