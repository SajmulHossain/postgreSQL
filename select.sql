CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(50),
    dob DATE,
    blood_group VARCHAR(50),
    country VARCHAR(50)
)

INSERT INTO
    students (
        first_name,
        last_name,
        age,
        grade,
        course,
        email,
        dob,
        blood_group,
        country
    )
VALUES (
        'Emma',
        'Johnson',
        18,
        'A',
        'Computer Science',
        'emma.johnson@example.com',
        '2005-03-15',
        'O+',
        'United States'
    ),
    (
        'Liam',
        'Smith',
        19,
        'B+',
        'Mathematics',
        'liam.smith@example.com',
        '2004-07-22',
        'A-',
        'Canada'
    ),
    (
        'Olivia',
        'Williams',
        20,
        'A-',
        'Biology',
        'olivia.williams@example.com',
        '2003-11-30',
        'B+',
        'United Kingdom'
    ),
    (
        'Noah',
        'Brown',
        18,
        'B',
        'Physics',
        'noah.brown@example.com',
        '2005-01-10',
        'AB+',
        'Australia'
    ),
    (
        'Ava',
        'Jones',
        19,
        'A+',
        'Chemistry',
        'ava.jones@example.com',
        '2004-05-18',
        'O-',
        'New Zealand'
    ),
    (
        'William',
        'Garcia',
        20,
        'C+',
        'Engineering',
        'william.garcia@example.com',
        '2003-09-05',
        'A+',
        'Spain'
    ),
    (
        'Sophia',
        'Miller',
        18,
        'B-',
        'Economics',
        'sophia.miller@example.com',
        '2005-02-28',
        'B-',
        'Germany'
    ),
    (
        'Benjamin',
        'Davis',
        19,
        'A',
        'Psychology',
        'benjamin.davis@example.com',
        '2004-12-12',
        'O+',
        'France'
    ),
    (
        'Isabella',
        'Rodriguez',
        20,
        'D',
        'History',
        'isabella.rodriguez@example.com',
        '2003-06-25',
        'AB-',
        'Mexico'
    ),
    (
        'James',
        'Martinez',
        18,
        'C',
        'Literature',
        'james.martinez@example.com',
        '2005-04-08',
        'A-',
        'Brazil'
    ),
    (
        'Mia',
        'Hernandez',
        19,
        'B+',
        'Political Science',
        'mia.hernandez@example.com',
        '2004-08-15',
        'B+',
        'Argentina'
    ),
    (
        'Elijah',
        'Lopez',
        20,
        'A-',
        'Business',
        'elijah.lopez@example.com',
        '2003-10-20',
        'O-',
        'Colombia'
    ),
    (
        'Charlotte',
        'Gonzalez',
        18,
        'F',
        'Art',
        'charlotte.gonzalez@example.com',
        '2005-07-03',
        'A+',
        'Chile'
    ),
    (
        'Lucas',
        'Wilson',
        19,
        'A+',
        'Music',
        'lucas.wilson@example.com',
        '2004-09-28',
        'AB+',
        'South Africa'
    ),
    (
        'Amelia',
        'Anderson',
        20,
        'B',
        'Philosophy',
        'amelia.anderson@example.com',
        '2003-12-05',
        'O+',
        'India'
    ),
    (
        'Mason',
        'Thomas',
        18,
        'C-',
        'Sociology',
        'mason.thomas@example.com',
        '2005-05-17',
        'B-',
        'Japan'
    ),
    (
        'Harper',
        'Taylor',
        19,
        'D+',
        'Anthropology',
        'harper.taylor@example.com',
        '2004-02-14',
        'A-',
        'China'
    ),
    (
        'Ethan',
        'Moore',
        20,
        'E',
        'Geography',
        'ethan.moore@example.com',
        '2003-04-30',
        'AB-',
        'Russia'
    ),
    (
        'Evelyn',
        'Jackson',
        18,
        'A',
        'Environmental Science',
        'evelyn.jackson@example.com',
        '2005-08-22',
        'O+',
        'Italy'
    ),
    (
        'Alexander',
        'Martin',
        19,
        'B+',
        'Communications',
        'alexander.martin@example.com',
        '2004-10-11',
        'B+',
        'Netherlands'
    );

SELECT email as "student email" FROM students;


SELECT * FROM students ORDER BY first_name DESC;
SELECT * FROM students ORDER BY age DESC;

-- unique data
SELECT DISTINCT blood_group FROM students; -- ORDER BY country ASC;

-- conditinal or filtered data
SELECT * FROM students
    WHERE grade = 'A' AND course = 'Computer Science';

SELECT * FROM students WHERE age <> 19;



-- SELECT upper(first_name) as upperName, * FROM students;

-- SELECT concat(first_name,' ', last_name) as full_name FROM students;

SELECT length(first_name) from students;


-- * aggregation

SELECT avg(age) FROM students;

SELECT max(age) FROM students;
SELECT min(age) FROM students;
SELECT sum(age) FROM students;
SELECT count(*) FROM students;


--  * aggregate + scaler

SELECT max(length(first_name)) FROM students;

-- null
SELECT * from students WHERE email IS NULL;

SELECT coalesce(email, 'Not provided') from students;

-- SELECT * from students WHERE country = 'Argentina' OR country = 'Brazil' OR country = 'Chile';

SELECT * from students WHERE country NOT IN('Brazil', 'Argentina');

SELECT * from students WHERE age BETWEEN 18 AND 20;

-- name start with a
SELECT * FROM students WHERE first_name LIKE '%a';

-- name end with A  -- * case sensetive
SELECT * FROM students WHERE first_name LIKE 'A%';


-- at first two character then 'a' then anything
SELECT * FROM students 
    WHERE first_name LIKE '__a%';

-- start with any two characters and ends with 'a'
SELECT * FROM students 
    WHERE first_name LIKE '__a';


-- !here like is case sensetive, ILIKE is case insensetive
SELECT * FROM students 
WHERE first_name ILIKE 'a%';


-- ? limit and offset

SELECT * FROM students LIMIT 5 OFFSET 2;

-- !full data table will delete;

DELETE FROM students;

DELETE FROM students
WHERE grade = 'B+';

SELECT * FROM students;

UPDATE students SET email = 'sajmul@gmail.com' WHERE student_id = 21;