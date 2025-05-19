CREATE Table student(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    country VARCHAR(20),
    roll INT,
    age INT,
    email VARCHAR(50) ,
    class VARCHAR(20)
)
-- delete the table
DROP Table student;

INSERT INTO student(name, country, roll, age, email, class) VALUES
('Ismail', 'Bangladesh', 101, 20, 'ismail@example.com', 'three'),
('Hosen', 'Bangladesh', 102, 19, 'hosen@example.com', 'four'),
('Rahim', 'India', 103, 21, 'rahim@example.com', 'five'),
('Karim', 'Pakistan', 104, 22, 'karim@example.com', 'six'),
('Nila', 'Nepal', 105, 20, 'nila@example.com', 'eight'),
('Rima', 'Bangladesh', 106, 21, 'rima@example.com', 'three'),
('Tariq', 'India', 107, 19, 'tariq@example.com', 'four'),
('Mehzab', 'Nepal', 108, 22, 'mehzab@example.com', 'five'),
('Lima', 'Pakistan', 109, 20, 'lima@example.com', 'six'),
('Sajib', 'Bangladesh', 110, 21, 'sajib@example.com', 'eight'),
('Ovi', 'India', 111, 20, 'ovi@example.com', 'three'),
('Jerin', 'Nepal', 112, 23, 'jerin@example.com', 'four'),
('Fahim', 'Bangladesh', 113, 22, 'fahim@example.com', 'five'),
('Asha', 'India', 114, 19, 'asha@example.com', 'six'),
('Nayan', 'Pakistan', 115, 20, 'nayan@example.com', 'eight');

-- delete for tables value
DELETE FROM student;
-- add a new Column
ALTER Table student ADD COLUMN class  VARCHAR(20);
-- show a specific column
SELECT email as "Student_email" FROM student;
-- To see age assencronouns or DESC
SELECT * FROM student ORDER BY age DESC;
-- ITS to see Uniqe age /Similar age
SELECT DISTINCT age FROM student ORDER BY age ASC;
-- use and opatetor and Or oparetor
SELECT * FROM student
    WHERE age = 20 OR country = 'Bangladesh';
-- its do to lower case a column
SELECT lower(name)AS student_name  FROM student;
SELECT INITCAP(name) AS formatted_name FROM student;

SELECT * FROM student   
    WHERE  country = 'Nepal'
-- where email is null then its set a default value
SELECT COALESCE(email,'DEFAULTeamil@gamil.com') FROM student;
-- IN its use to safe OR oparetor
SELECT * FROM student
    WHERE age IN (20,21) ORDER BY age ASC ;

-- To see similar total age
SELECT age,count(*) AS total_students FROM student
    WHERE age IN (20,21) GROUP BY age;
-- IMPORTANT end

-- Between
SELECT * FROM student
    WHERE age BETWEEN 19 AND 21 ORDER BY age ASC;

-- LIKE
SELECT * FROM student
    WHERE name LIKE ('%im');

SELECT * FROM student LIMIT 10;
-- FOR PAGINATION
SELECT * FROM student ORDER BY id LIMIT 5 OFFSET 0;
SELECT * FROM student ORDER BY id LIMIT 5 OFFSET 5 * 1;
SELECT * FROM student ORDER BY id LIMIT 5 OFFSET 10;
-- Pagination END
SELECT * FROM student;
-- Update
UPDATE student set email = 'defaultNewEmail@gmail.com',age = 21
    WHERE id = 16;
