-- Выполнить с использованием оператора JOIN
-- 3. Вывести список имен всех продавцов. Для продавцов с комиссионными 
--    менее 0.15 присоединить объем минимального заказа этого продавца.

SELECT 
    s.name,
    MIN(o.amt) as total_amt
FROM my_schema.sal s 
LEFT JOIN my_schema.ord o ON s.snum = o.snum AND s.comm < 0.15
GROUP BY s.name, s.comm
ORDER BY s.name;
