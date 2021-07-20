-- get all graduates without a github account
-- get name, email, phone

SELECT name, email, phone
FROM students
WHERE github is NULL;
and end_date IS NOT NULL;