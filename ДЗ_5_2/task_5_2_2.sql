USE shop;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Ирина', '1999-01-05'),
  ('Илья', '2001-06-07'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-25'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Михаил', '1967-01-13'),
  ('Карина', '1990-06-18'),
  ('Мария', '1992-08-29');
  
SELECT date_format(date(concat_ws('-', YEAR(now()), MONTH(birthday_at), day(birthday_at))), '%W') AS bday,
COUNT(*) AS d_amount
FROM users
GROUP BY bday
ORDER BY d_amount DESC;

