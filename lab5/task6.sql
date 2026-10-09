--  Выполнить с использованием UNION/EXPECT/INTERSECT
--  6. Выведете полный список последних букв, которыми заканчиваются имена и/или города покупателей.

SELECT SUBSTRING(c.name FROM length(c.name)) FROM my_schema.cust c
UNION ALL 
SELECT SUBSTRING(c.city FROM length(c.city)) FROM my_schema.cust c;
