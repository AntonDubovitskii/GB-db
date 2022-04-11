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
(11, 343, 1),
(12, 738, 2),
(13, 433, 3),
(14, 900, 4),
(15, 111, 5),
(16, 421, 6),
(17, 242, 7);

SELECT round(EXP(sum(LN(id)))) FROM storehouses_products;

/* Честно говоря не понял как решить задачу средствами, рассмотренными в теме урока. Но результат корректный.
