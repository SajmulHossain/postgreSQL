SELECT country, count(*), avg(age) FROM students GROUP BY country;

-- ! conditional grouping
SELECT country, count(*), avg(age) FROM students GROUP BY country HAVING avg(age) > 19;

SELECT extract(year from dob) as birth_number_year, count(*) FROM students GROUP BY birth_number_year;