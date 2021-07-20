-- CREATE TABLE 
-- ASSIGNMENT  has an id, name, content, day, chapter, duration
-- ASSIGNMENT SUBMISSION has an id, assignment_id, student_id, duration, submission_date

CREATE TABLE assignments (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  content TEXT,
  day INTEGER,
  chapter INTEGER,
  duration INTEGER
);

CREATE TABLE assignment_submissions (
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  -- cross to assignments table, index id
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  duration INTEGER,
  submission_date DATE
);