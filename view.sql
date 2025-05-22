
SELECT * FROM employees 

CREATE view dept_avg_salary
AS
SELECT department_name, avg(salary)as averageSalary FROM employees GROUP BY department_name;


SELECT  * FROM dept_avg_salary;
