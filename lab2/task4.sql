-- 	2) Выполнить задания 3-4 с использованием строковых функций
--  4. Вывести в одном столбце рейтинг покупателей, соединенный со словом «scores» и именем в нижнем регистре, в формате: ‘ivanov: 100 scores’, 
-- 				только для тех покупателей, чье имя содержит подстроку ‘ev’.

select lower(concat(name, ': ', rating, ' scores')) as new_attribute
from my_schema.cust
where position('ev' in name) > 0;
