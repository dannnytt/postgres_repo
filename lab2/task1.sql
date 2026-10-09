-- 1) Выполнить задания 1-2 с использованием оператора LIKE
-- 1. Вывести названия продуктов, которые начинаются и заканчиваются на букву s.

select name from my_schema.prod where name like 'S%s';
-- select name from my_schema.prod where name ilike 's%s';
