CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id)
);


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

SELECT title, username FROM post 
    JOIN "user" on post.user_id = "user".id;
;

--?  name alias
SELECT * FROM post p JOIN "user" u on p.user_id = u.id; --! or
SELECT * FROM post as p RIGHT OUTER JOIN "user" as u on p.user_id = u.id;

SELECT * FROM "user" LEFT JOIN post on post.user_id = "user".id;
INSERT INTO post (id, title, user_id) VALUES (9, 'this is a post title', NULL);

SELECT *
FROM post as p
    FULL OUTER JOIN "user" as u on p.user_id = u.id;