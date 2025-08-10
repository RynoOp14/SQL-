CREATE DATABASE details;
USE  details;
-- USING OF SELECT STATEMENT
SELECT * FROM student_info;

-- SELECT + WHERE + ORDER BY USING
SELECT name, math_score
FROM student_info
WHERE math_score > 80
ORDER BY math_score DESC;

-- GROUP BY + Aggregate
SELECT gender, AVG(math_score) AS avg_math
FROM student_info
GROUP BY gender;

-- SELF JOIN 
SELECT s1.name AS student_name, s2.name AS classmate_name, s1.grade_level
FROM student_info s1
JOIN student_info s2
    ON s1.grade_level = s2.grade_level
    AND s1.student_id <> s2.student_id
ORDER BY s1.grade_level, s1.name;

-- SUBQUERY
SELECT name, math_score
FROM student_info
WHERE math_score > (SELECT AVG(math_score) FROM student_info);
 
-- CREATE VIEW
CREATE VIEW top_students AS
SELECT name, (math_score + reading_score + writing_score)/3 AS avg_score
FROM student_info
ORDER BY avg_score DESC
LIMIT 5;
 
SELECT *FROM top_students;

-- INDEX FOR OPTIMIZATION
CREATE INDEX idx_grade_level ON student_info(grade_level);



