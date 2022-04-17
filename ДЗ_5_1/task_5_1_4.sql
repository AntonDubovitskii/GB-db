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
  ('Андрей', '1990-05-05'),
  ('Сергей', '1984-08-12'),
  ('Александр', '1985-03-20'),
  ('Иван', '1988-02-14'),
  ('Дарья', '1998-01-12'),
  ('Мария', '1992-08-29');
 
 /*
 SELECT name, birthday_at, date_format(birthday_at, '%M') AS bmonth FROM users;
Наглядная демонстрация вычисляемого поля, использующего функцию date_format()
*/

 SELECT * FROM users
 WHERE date_format(birthday_at, '%M') IN ('may', 'august');
 
-- Применение фунции к требуемому списку