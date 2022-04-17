USE shop;

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела',
  UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина';

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');
  
 SELECT id, name, FIELD(id, 5, 1, 2) AS correct_order FROM catalogs WHERE id IN (5, 1, 2)
 ORDER BY correct_order;
 
/* При помощи функции FIELD() добавляется вычисляемое поле correct_order и уже по нему проводится сортировка.*/