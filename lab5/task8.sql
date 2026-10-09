-- Выполнить с использованием подзапроса
-- 8. Вывести имена всех продавцов, которые продавали товары, которые участвовали в более чем 5 заказах.

SELECT DISTINCT s.name FROM my_schema.sal s
JOIN my_schema.ord o
USING (snum)
WHERE o.pnum IN (SELECT pnum FROM my_schema.ord GROUP BY pnum HAVING count(*) > 5);
