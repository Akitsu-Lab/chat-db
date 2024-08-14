CREATE TABLE db.users(
  user_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
  password VARCHAR(30) NOT NULL, 
  user_name VARCHAR(30) NOT NULL);

INSERT INTO 
  users
    (password, user_name) 
  VALUES 
    ("123", "keita"),
    ("124", "sota");