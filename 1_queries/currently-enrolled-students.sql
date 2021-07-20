-- get all of the studnets currently enrolled
-- a student's end date will be NULL when they are currently enrolled


SELECT name, id, cohort_id
FROM students
WHERE end_date is NULL
ORDER BY cohort_id;
