-- get name, email, id, and cohort_id 
-- for students w/o a gmail account and a phone number

SELECT name, email, id, cohort_id
FROM STUDENTS
WHERE email NOT LIKE "%gmail.com"
or WHERE phone is NULL;