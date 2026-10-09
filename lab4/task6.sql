--    6. Вывести продавцов,
-- которые не продавали товары покупателям из своего города.

SELECT name
FROM my_schema.sal
WHERE snum <> ALL
(SELECT snum
FROM my_schema.ord
WHERE cnum = ANY (SELECT cnum FROM my_schema.cust WHERE cust.city = sal.city));
