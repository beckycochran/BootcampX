-- Get the total amount of time that all students from a specific cohort have spent on all assignments.
-- This should work for any cohort but use FEB12 for now

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN cohorts ON cohorts.id = cohort_id;
WHERE cohorts.id = 'FEB12';
