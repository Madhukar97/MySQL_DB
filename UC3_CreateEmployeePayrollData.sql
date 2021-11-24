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