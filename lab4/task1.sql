-- 1. Вывести продавцов, комиссионные которых не менее средних комиссионных всех продавцов.

SELECT name
FROM my_schema.sal
WHERE comm >= 
(SELECT avg(comm)
FROM my_schema.sal);
