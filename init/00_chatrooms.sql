CREATE TABLE db.chatrooms(
  room_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  room_name VARCHAR(30) NOT NULL
  );

INSERT INTO 
  chatrooms
    (room_name) 
  VALUES 
    ("keita's room"),
    ("kozaru room");