CREATE TABLE messages
(
    message_id SERIAL PRIMARY KEY,
    room_id    INT REFERENCES chatrooms(room_id) ON DELETE CASCADE,
    user_id    INT REFERENCES users(user_id) ON DELETE CASCADE,
    message    TEXT NOT NULL,
    sent_at    TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO messages
    (room_id, user_id, message)
VALUES (1, 1, 'HEY'),
       (1, 2, 'YO');
