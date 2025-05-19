CREATE Table students(
    s_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT  NUll,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('Alice', 'Johnson', 20, 'A+', 'Computer Science', 'alice.johnson@example.com', '2004-01-15', 'A+', 'USA'),
('Bob', 'Smith', 22, 'B', 'Mechanical Engg.', 'bob.smith@example.com', '2002-03-22', 'B+', 'Canada'),
('Carol', 'Lee', 21, 'A', 'Business', 'carol.lee@example.com', '2003-05-10', 'O-', 'UK'),
('David', 'Miller', 23, 'C+', 'Electrical Engg.', 'david.miller@example.com', '2001-09-18', 'AB+', 'USA'),
('Eva', 'Brown', 19, 'B-', 'Physics', 'eva.brown@example.com', '2005-07-30', 'B-', 'Australia'),
('Frank', 'Garcia', 20, 'A-', 'Mathematics', 'frank.garcia@example.com', '2004-11-12', 'O+', 'Spain'),
('Grace', 'Davis', 22, 'A+', 'Chemistry', 'grace.davis@example.com', '2002-08-02', 'A+', 'USA'),
('Henry', 'Wilson', 21, 'B+', 'Civil Engg.', 'henry.wilson@example.com', '2003-06-25', 'AB-', 'UK'),
('Isla', 'Martinez', 20, 'A', 'Art History', 'isla.martinez@example.com', '2004-04-17', 'B+', 'Mexico'),
('Jack', 'Anderson', 19, 'C', 'Literature', 'jack.anderson@example.com', '2005-12-05', 'O-', 'USA'),
('Kathy', 'Thomas', 21, 'A+', 'Psychology', 'kathy.thomas@example.com', '2003-03-08', 'A-', 'Canada');


SELECT * FROM students;

--Column er nam ta onn kisu ekta diye show korar jonno
SELECT email as "Students Email" FROM students;

-- assending or desending

SELECT * FROM students ORDER BY first_name ASC;

-- UNIQUE jegulo ase ,segullo sudu dekhabe
SELECT DISTINCT country from students;

-- condition diye table show korar jonno
SELECT * FROM students
    WHERE country = 'USA'

-- Multiple condition diye table show korar jonno
SELECT * FROM students
    WHERE country = 'USA' AND age = '23';

SELECT upper(first_name)as "firsName" ,* FROM students;

-- scalar function   --- UPPER ,LOWER,CONCAT,LENGTH
SELECT concat(first_name, ' ',last_name) as "FullName" ,* FROM students;

-- aggregrate  sob gula data niye ekta output diye ------ MAX,MIN,SUM COUNT  SELECT count(*)  FROM students;