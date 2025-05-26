CREATE Table employees(
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);

CREATE Table departments(
    dept_id INT,
    dept_name VARCHAR(50)
);


INSERT INTO employees VALUES(1, 'John Doe', 101), (2, 'Jane Smith', 102);

INSERT INTO departments VALUES(101, 'Human Resources');

INSERT INTO departments VALUES (102, 'Marketing');

SELECT * FROM departments;
SELECT * FROM employees;

SELECT * FROM employees
CROSS JOIN departments;


SELECT * FROM employees
NATURAL JOIN departments;