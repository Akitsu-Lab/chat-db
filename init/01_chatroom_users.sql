CREATE TABLE chatroom_users
(
    chatroom_users_id SERIAL PRIMARY KEY,
    room_id           INT REFERENCES chatrooms(room_id) ON DELETE CASCADE,
    user_id           INT REFERENCES users(user_id) ON DELETE CASCADE,
    joined_at         TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO chatroom_users
    (room_id, user_id)
VALUES (1, 1),
       (1, 2);
