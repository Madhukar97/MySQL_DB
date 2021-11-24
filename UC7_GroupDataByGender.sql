CREATE DATABASE payroll_service;
USE payroll_service;
CREATE TABLE employee_payroll (
	id int NOT NULL AUTO_INCREMENT,
    name varchar(100) NOT NULL,
    salary double NOT NULL,
    start_date DATE NOT NULL,
    PRIMARY KEY (id)
);
DESC employee_payroll;

INSERT INTO employee_payroll (name, salary, start_date)
VALUES 
('Madhukar',30000,'2021-10-05'),
('Saran',37000,'2021-09-30'),
('Subham',35000,'2020-10-05'),
('Basila',40000,'2019-09-29'),
('Manu',100000,'2018-01-05');

SELECT * FROM employee_payroll;

SELECT salary FROM employee_payroll
WHERE name = 'Madhukar';

SELECT name FROM employee_payroll
WHERE start_date BETWEEN '2020-01-01' AND DATE(NOW());

ALTER TABLE employee_payroll
ADD gender varchar(1) NOT NULL
AFTER name;

UPDATE employee_payroll SET gender = 'M'
WHERE name != 'Basila';

UPDATE employee_payroll SET gender = 'F'
WHERE name = 'Basila';

SELECT SUM(salary) AS male_employees_salary_sum 
FROM employee_payroll
WHERE gender = 'M'
GROUP BY gender;

SELECT SUM(salary) AS female_employees_salary_sum
FROM employee_payroll
WHERE gender = 'F'
GROUP BY gender;

SELECT AVG(salary) AS male_employees_avg_salary 
FROM employee_payroll
WHERE gender = 'M'
GROUP BY gender;

SELECT AVG(salary) AS female_employees_avg_salary
FROM employee_payroll
WHERE gender = 'F'
GROUP BY gender;

SELECT MIN(salary) AS 'male employees min salary' 
FROM employee_payroll
WHERE gender = 'M'
GROUP BY gender;

SELECT MIN(salary) AS female_employees_min_salary
FROM employee_payroll
WHERE gender = 'F'
GROUP BY gender;

SELECT MAX(salary) AS male_employees_max_salary 
FROM employee_payroll
WHERE gender = 'M'
GROUP BY gender;

SELECT MAX(salary) AS female_employees_max_salary 
FROM employee_payroll
WHERE gender = 'F'
GROUP BY gender;

SELECT COUNT(salary) AS male_employees_count
FROM employee_payroll
WHERE gender = 'M'
GROUP BY gender;

SELECT COUNT(salary) AS female_employees_count
FROM employee_payroll
WHERE gender = 'F'
GROUP BY gender;

