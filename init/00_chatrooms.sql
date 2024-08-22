CREATE TABLE chatrooms(
    room_id   SERIAL      NOT NULL PRIMARY KEY,
    room_name VARCHAR(30) NOT NULL
);

INSERT INTO
    chatrooms (room_name)
VALUES
    ('keita''s room'),
    ('kozaru room');
