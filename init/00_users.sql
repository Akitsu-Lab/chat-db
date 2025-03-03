CREATE TABLE users
(
    user_id    SERIAL PRIMARY KEY,
    user_name  VARCHAR(50)  NOT NULL,
    password   VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users
    (user_name, password)
VALUES ('keita', '123'),
       ('sota', '124');
