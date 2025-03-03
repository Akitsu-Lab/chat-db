CREATE TABLE chatrooms
(
    room_id    SERIAL PRIMARY KEY,
    room_name  VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO chatrooms (room_name)
VALUES ('keita''s room'),
       ('kozaru room');
