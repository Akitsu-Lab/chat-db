CREATE TABLE chatroom_users (
  chatroom_users_id INT NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  room_id INT NOT NULL,
  user_id INT NOT NULL,
  FOREIGN KEY (room_id) REFERENCES chatrooms(room_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO 
  chatroom_users
    (room_id, user_id) 
  VALUES 
    (1, 1),
    (1, 2);