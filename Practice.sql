CREATE Table student(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    country VARCHAR(20),
    roll INT,
    age INT,
    email VARCHAR(50) ,
    class VARCHAR(20)
)

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


DELETE FROM student;

ALTER Table student ADD COLUMN class  VARCHAR(20);

SELECT email as "Student_email" FROM student;

SELECT * FROM student ORDER BY age DESC;

SELECT DISTINCT age FROM student ORDER BY age ASC;

SELECT * FROM student
    WHERE age = 20 OR country = 'Bangladesh';

SELECT lower(name)AS student_name  FROM student;
SELECT INITCAP(name) AS formatted_name FROM student;


SELECT * FROM student   
    WHERE  country = 'Nepal'

SELECT COALESCE(email,'DEFAULTeamil@gamil.com') FROM student;

SELECT * FROM student
    WHERE age IN (20,21) ORDER BY age ASC ;

-- IMPORTANT START
SELECT age,count(*) AS total_students FROM student
    WHERE age IN (20,21) GROUP BY age;
-- IMPORTANT end

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

UPDATE student set email = 'defaultNewEmail@gmail.com',age = 21
    WHERE id = 16;
INSERT INTO student(name, country, roll, age, email, class)
VALUES ('Sokhina', 'USA', 117, 20,NULL , 'six');