-- 3. Выбрать продавцов, которые продавали продукты с номером 1001 для покупателей, которые когда-либо покупали продукт с номером 1005.

SELECT DISTINCT(snum)
FROM my_schema.ord
WHERE pnum = 1001
AND cnum = (SELECT DISTINCT(cnum)
FROM my_schema.ord
WHERE pnum = 1005);
