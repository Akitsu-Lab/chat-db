CREATE TABLE db.messages(
  message_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  room_id INT NOT NULL,  
  user_id INT NOT NULL,
  message VARCHAR(50),
  FOREIGN KEY (room_id) REFERENCES chatrooms(room_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
  );

INSERT INTO 
  messages
    (room_id, user_id, message) 
  VALUES 
    (1, 1, "HEY"),
    (1, 2, "YO");