-- Выполнить с использованием оператора JOIN
-- 2. Напишите запрос, который выведет номер и объем заказа, 
--    имя и город покупателя только для заказов, покупатель которых не из Москвы.

SELECT o.onum, o.amt, c.name, c.city 
FROM my_schema.ord o 
JOIN my_schema.cust c 
ON o.cnum = c.cnum AND c.city != 'Moscow'; 
