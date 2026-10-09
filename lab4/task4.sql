-- 4. Вывести названия всех товаров, которые никогда не продавали продавцы из Москвы.

SELECT name
FROM my_schema.prod
WHERE pnum <> ALL
(SELECT DISTINCT(pnum)
FROM my_schema.ord
WHERE snum = (SELECT snum FROM my_schema.sal WHERE city = 'Moscow'));
