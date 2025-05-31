CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);



-- Sample data
INSERT INTO employees (employee_name, department_name, salary, hire_date) VALUES
('John Smith', 'Sales', 55000.00, '2018-06-15'),
('Emily Johnson', 'Marketing', 62000.00, '2019-03-22'),
('Michael Williams', 'IT', 75000.00, '2017-11-05'),
('Sarah Brown', 'HR', 58000.00, '2020-01-10'),
('David Jones', 'Finance', 68000.00, '2016-09-18'),
('Jennifer Davis', 'Sales', 53000.00, '2021-02-28'),
('Robert Miller', 'IT', 82000.00, '2015-07-12'),
('Jessica Wilson', 'Marketing', 59000.00, '2019-08-30'),
('Thomas Moore', 'Operations', 65000.00, '2018-04-17'),
('Lisa Taylor', 'HR', 60000.00, '2020-11-21'),
('Daniel Anderson', 'Finance', 72000.00, '2017-05-09'),
('Amy Thomas', 'Sales', 56000.00, '2022-01-05'),
('Charles Jackson', 'IT', 78000.00, '2016-03-14'),
('Karen White', 'Customer Service', 48000.00, '2021-07-19'),
('Matthew Harris', 'Operations', 67000.00, '2019-10-25'),
('Nancy Martin', 'Marketing', 61000.00, '2018-12-03'),
('Kevin Garcia', 'IT', 80000.00, '2017-02-11'),
('Donna Martinez', 'HR', 59000.00, '2020-06-08'),
('Steven Robinson', 'Finance', 71000.00, '2018-08-22'),
('Michelle Clark', 'Sales', 54000.00, '2021-04-15'),
('Paul Rodriguez', 'Operations', 63000.00, '2019-11-30'),
('Laura Lee', 'Customer Service', 49000.00, '2022-03-10'),
('Mark Walker', 'IT', 76000.00, '2016-05-27'),
('Rebecca Hall', 'Marketing', 64000.00, '2018-09-14'),
('Jason Allen', 'Finance', 69000.00, '2017-12-05'),
('Angela Young', 'HR', 57000.00, '2021-01-18'),
('Brian Hernandez', 'Sales', 52000.00, '2022-05-22'),
('Melissa King', 'IT', 83000.00, '2015-04-19'),
('Timothy Wright', 'Operations', 66000.00, '2019-06-11'),
('Heather Lopez', 'Customer Service', 50000.00, '2020-08-07'),
('Richard Scott', 'Marketing', 60000.00, '2018-02-26'),
('Amanda Green', 'Finance', 70000.00, '2017-07-31'),
('Patrick Adams', 'Sales', 58000.00, '2021-09-12'),
('Brenda Baker', 'IT', 79000.00, '2016-08-23'),
('George Gonzalez', 'HR', 61000.00, '2019-04-16'),
('Christina Nelson', 'Operations', 64000.00, '2020-10-29'),
('Scott Carter', 'Customer Service', 47000.00, '2022-02-14'),
('Cynthia Mitchell', 'Marketing', 63000.00, '2018-05-08'),
('Joshua Perez', 'Finance', 73000.00, '2017-03-21'),
('Rachel Roberts', 'Sales', 59000.00, '2021-11-09');

SELECT max(salary) FROM employees WHERE department_name = 'HR';

SELECT * FROM employees WHERE salary > (SELECT max(salary) FROM employees WHERE department_name = 'HR');