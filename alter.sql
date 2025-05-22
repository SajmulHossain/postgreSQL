ALTER Table person2 add COLUMN email VARCHAR(55) NOT NULL DEFAULT 'abc@abc.com';

SELECT * from person2;

INSERT into person2 VALUES(5, 'test2', 45, 'admin@sajmul.com')

-- delete column

ALTER Table person2 DROP COLUMN email;

-- column name rename
ALTER Table person2 RENAME COLUMN age to user_age;

-- change column type
ALTER TABLE person2 alter COLUMN username type VARCHAR(50);

-- set constrain in a column
ALTER TABLE person2 alter COLUMN user_age set NOT NULL;

-- drop constrain --> 
ALTER TABLE person2 alter COLUMN username DROP NOT NULL;


-- adding unique constraint
ALTER Table person2
 ADD constraint unique_person2_id UNIQUE(id);

-- remove constraint
ALTER Table person2
 ADD constraint unique_person2_id UNIQUE(id);

--  delete full table
DROP Table person2;

-- remaining table and all structures, delete all data.
TRUNCATE Table person2;