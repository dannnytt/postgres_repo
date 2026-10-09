--  Выполнить с использованием UNION/EXPECT/INTERSECT
--  7. Вывести список городов, в которых живут и продавцы, и покупатели, но не производятся продукты.

(SELECT s.city FROM my_schema.sal s
INTERSECT
SELECT c.city FROM my_schema.cust c)
EXCEPT 
SELECT p.city FROM my_schema.prod p;
