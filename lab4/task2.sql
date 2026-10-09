-- 2. Вывести общее количество купленных товаров для каждого покупателя, у которого это количество не больше, чем у покупателя с номером 2003.

SELECT sum(amt), cnum
FROM my_schema.ord
GROUP BY cnum
HAVING sum(amt) <= 
(SELECT sum(amt)
FROM my_schema.ord
WHERE cnum = 2003);
