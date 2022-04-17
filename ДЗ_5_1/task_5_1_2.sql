USE shop;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(255),
  updated_at VARCHAR(255)
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES
  ('Геннадий', '1990-10-05', '20.10.2017 10:10', '20.10.2017 8:10'),
  ('Наталья', '1984-11-12', '20.10.2017 8:10', '10.04.2022 8:10'),
  ('Александр', '1985-05-20','20.07.2011 8:10', '20.10.2012 8:10'),
  ('Сергей', '1988-02-14', '20.10.2017 8:10', '11.10.2017 8:10'),
  ('Иван', '1998-01-12', '20.10.2017 8:10', '20.10.2017 8:10'),
  ('Мария', '1992-08-29', '20.10.2017 8:10', '20.10.2017 8:10');
 
ALTER TABLE 
	users CHANGE created_at old_created_at varchar(255);

ALTER TABLE 
	users CHANGE updated_at old_updated_at varchar(255);

ALTER TABLE users 
ADD COLUMN created_at DATETIME, 
ADD COLUMN updated_at DATETIME;

UPDATE users 
SET created_at = STR_TO_DATE(old_created_at, '%d.%m.%Y %k:%j'),
	updated_at = STR_TO_DATE(old_updated_at, '%d.%m.%Y %k:%j');

ALTER TABLE users 
	DROP old_updated_at, DROP old_created_at;


SELECT * FROM users;

DESCRIBE users;