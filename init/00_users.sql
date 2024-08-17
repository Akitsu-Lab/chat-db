CREATE TABLE users(
  user_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  user_name VARCHAR(30) NOT NULL,
  password VARCHAR(30) NOT NULL);

INSERT INTO 
  users
    (user_name, password) 
  VALUES 
    ("keita", "123"),
    ("sota", "124");