create Table "user"(
    id SERIAL PRIMARY KEY,
    user_Name VARCHAR(50)
)

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    user_id INTEGER REFERENCES "user"(id)  ON DELETE set DEFAULT DEFAULT 3
)

INSERT INTO "user" (user_Name) VALUES
('Ismail'),
('Rahim'),
('Karim'),
('Joynul'),
('Abedin'),
('Sattar');
INSERT INTO post (title,user_id) VALUES
('Getting Started with JavaScript',1),
('Understanding React Hooks',4),
('Top 10 VS Code Extensions',6),
('How to Use Git Effectively',3),
('Introduction to TypeScript',5),
('Building a REST API with Node.js',2),
('CSS Grid vs Flexbox',4),
('Dark Mode Toggle in Tailwind CSS',5),
('Deploying Apps with Vercel',1),
('Common JavaScript Interview Questions',6)

DROP TABLE post;
DROP TABLE "user";


SELECT * FROM "user";
SELECT * FROM post;

INSERT INTO post(id,title,user_id) VALUES (11,'practice task',NULL)

DELETE FROM "user"
    WHERE id = 6

SELECT *  FROM post
RIGHT JOIN "user" on post.user_id = "user".id