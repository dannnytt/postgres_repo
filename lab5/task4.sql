-- Использовать оператор CROSS JOIN
-- 4. Вывести все уникальные пары номеров продукты и покупателей, находящихся в одном городе.

SELECT p.name, c.name 
FROM my_schema.prod p 
CROSS JOIN my_schema.cust c 
WHERE p.city = c.city;
