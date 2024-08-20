CREATE TABLE chatrooms (
  room_id INT NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  room_name VARCHAR(30) NOT NULL
);

INSERT INTO 
  chatrooms
    (room_name) 
  VALUES
    ('keita''s room'),  -- シングルクォートのエスケープ
    ('kozaru room');