CREATE TABLE studentDATA(
    id SERIAL PRIMARY KEY,
    roll INT,
    name VARCHAR(50) DEFAULT NULL,
    age INT check(age >= 18),
    department VARCHAR(50),
    score DECIMAL(5,2), 
    Status VARCHAR(10),
    last_login TIMESTAMP 
)

INSERT INTO studentDATA(roll,name,age,department,score,status,last_login) VALUES 
(101, 'Alice', 20, 'Computer Science', 88.5, 'passed', '2025-05-10 09:00:00'),
(102, 'Bob', 22, 'Mathematics', 74.0, 'passed', '2025-05-11 10:15:00'),
(103, NULL, 19, 'Physics', 59.5, 'failed', '2025-05-12 11:30:00'),
(104, 'David', 21, 'Chemistry', 92.0, 'passed', '2025-05-10 14:00:00'),
(105, 'Eva', 18, 'Biology', 48.0, 'failed', '2025-05-13 08:45:00'),
(106, NULL, 23, 'Economics', 65.0, 'passed', '2025-05-14 09:20:00'),
(107, 'Frank', 20, 'Computer Science', 77.5, 'passed', '2025-05-10 16:00:00'),
(108, 'Grace', 19, 'Mathematics', 82.0, 'passed', '2025-05-11 17:15:00'),
(109, 'Helen', 24, 'Physics', 39.0, 'failed', '2025-05-12 18:30:00'),
(110, 'Ivy', 21, 'Chemistry', 90.0, 'passed', '2025-05-10 19:00:00'),
(111, NULL, 22, 'Biology', 55.0, 'failed', '2025-05-13 20:45:00'),
(112, 'Jack', 20, 'Economics', 71.0, 'passed', '2025-05-14 21:20:00'),
(113, 'Karen', 23, 'Computer Science', 66.5, 'passed', '2025-05-10 22:00:00'),
(114, NULL, 19, 'Mathematics', 58.0, 'failed', '2025-05-11 23:15:00'),
(115, 'Leo', 21, 'Physics', 80.0, 'passed', '2025-05-12 07:30:00');

-- Add a new column
ALTER Table studentDATA
    ADD COLUMN email VARCHAR(50);
-- Rename the Column
ALTER TABLE studentDATA
    RENAME COLUMN email to Student_email;
-- Add Constructor
ALTER TABLE studentDATA
    ADD CONSTRAINT unique_student_email UNIQUE (student_email)
-- DROP A COLUMN
ALTER TABLE studentDATA
    DROP COLUMN status;
    
--  Order BY
SELECT * FROM studentDATA ORDER BY name ASC;
-- DISTINCT 
SELECT DISTINCT age  from studentDATA;

-- AND OR 
SELECT * FROM studentDATA
    WHERE status = 'passed' AND (department ='Economics'  OR name = 'David')

-- Scaler Function
SELECT * FROM studentDATA;









DROP TABLE studentDATA