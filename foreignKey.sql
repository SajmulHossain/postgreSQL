CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL
);


CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    -- user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
    -- user_id INTEGER REFERENCES "user"(id) ON DELETE set NULL
    user_id INTEGER REFERENCES "user"(id) ON DELETE set DEFAULT DEFAULT 2
);

DROP Table "user";
DROP Table post;

INSERT INTO "user" (username) VALUES 
('Akash'),
('Batash'),
('PostGre'),
('Sql');

INSERT INTO post (title, user_id) VALUES
('Enjoy a sunny day with Akash', 2),
('Batash just shared an amazing recipe', 1),
('Exploring adventures with Sagor',4),
('Nodi wisdom always leaves me inspired',4);

INSERT INTO post (title, user_id) VALUES
('Enjoy a the test', NULL);

ALTER TABLE post 
    alter COLUMN user_id set NOT NULL;
SELECT * FROM post;

DELETE FROM "user" WHERE id = 4;
