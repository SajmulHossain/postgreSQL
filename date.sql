SHOW timezone;  -- * showing time zone

SELECT now();  --* timestamp with timezone

create table timeZ (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

INSERT into timeZ VALUES('12-12-2024 12:00', '12-12-2024 12:00');

SELECT * FROM timeZ;

SELECT CURRENT_DATE;  -- ! show today's date

SELECT now()::date; --? same as before

SELECT to_char(now(), 'dd-mm-yyyy');

SELECT to_char(now(), 'ddd'); -- ? th day of the year


SELECT CURRENT_DATE - INTERVAL '4 days';  -- !difference bewteen today from mentioned day

SELECT age(CURRENT_DATE, '2004-12-03');  -- ? age  

SELECT extract (MONTH FROM '2020-10-11'::date);