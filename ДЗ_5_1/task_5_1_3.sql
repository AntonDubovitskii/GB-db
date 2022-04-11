USE shop;

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';

INSERT INTO storehouses_products (storehouse_id, product_id, value) VALUES 
(11, 343, 1000),
(12, 738, 0),
(13, 433, 90),
(14, 900, 0),
(15, 111, 3000),
(16, 421, 8),
(17, 242, 67);

SELECT * FROM storehouses_products 
ORDER BY IF(value > 0, 0, 1), value;

/* Сортировка по value проводится в двух группах, в первую попадают те строки, у которых при помощи функции IF вычисляемое поле
 * равно 0, во вторую те, где равно 1. */


