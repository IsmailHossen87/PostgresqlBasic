CREATE TABLE employees(
    employee_id SERIAL PRIMARY KEY,
    employe_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
)

INSERT INTO employees (employe_name, department_name, salary, hire_date) VALUES
('Alice', 'HR', 50000.00, '2021-01-15'),
('Bob', 'MARKETING', 55000.00, '2020-06-23'),
('Charlie', 'FINANCE', 60000.00, '2019-03-10'),
('David', 'IT', 58000.00, '2022-04-12'),
('Eva', 'SALES', 52000.00, '2023-02-18'),
('Frank', 'ADMIN', 57000.00, '2021-11-05'),
('Grace', 'OPERATIONS', 61000.00, '2018-07-30'),
('Hannah', 'R&D', 59000.00, '2020-08-01'),
('Ivy', 'CUSTOMER SUPPORT', 53000.00, '2023-01-25'),
('Jack', 'LEGAL', 56000.00, '2022-09-13'),
('Karen', 'HR', 60500.00, '2021-05-16'),
('Leo', 'MARKETING', 60000.00, '2020-10-20'),
('Mia', 'FINANCE', 54000.00, '2022-12-01'),
('Nina', 'IT', 57500.00, '2019-04-14'),
('Oscar', 'SALES', 62000.00, '2018-11-11'),
('Paul', 'ADMIN', 58500.00, '2023-03-27'),
('Queen', 'OPERATIONS', 51000.00, '2020-02-05'),
('Robert', 'R&D', 59000.00, '2021-07-09'),
('Sophia', 'CUSTOMER SUPPORT', 61500.00, '2022-06-22'),
('Tom', 'LEGAL', 60000.00, '2023-05-10'),
('Uma', 'HR', 52500.00, '2020-03-17'),
('Victor', 'MARKETING', 56500.00, '2019-08-03'),
('Wendy', 'FINANCE', 63000.00, '2017-10-19'),
('Xavier', 'IT', 59500.00, '2021-09-28'),
('Yasmin', 'SALES', 53500.00, '2023-01-02'),
('Zack', 'ADMIN', 58000.00, '2022-02-07'),
('Ariana', 'OPERATIONS', 62500.00, '2019-05-25'),
('Brandon', 'R&D', 60500.00, '2020-12-15'),
('Catherine', 'CUSTOMER SUPPORT', 54500.00, '2021-04-04'),
('Daniel', 'LEGAL', 56000.00, '2023-03-01');


SELECT * FROM employees 
WHERE department_name = 'HR' ORDER BY salary DESC LIMIT 1;

SELECT * FROM employees WHERE salary > (SELECT max(salary) FROM employees WHERE department_name='HR')



SELECT employe_name ,salary ,department_name FROM employees 
WHERE department_name in 
(SELECT department_name  FROM employees WHERE department_name LIKE '%R%');


