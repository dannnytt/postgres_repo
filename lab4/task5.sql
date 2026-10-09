-- 5. Вывести покупателей, рейтинг которых не меньше. чем рейтинг, 
--    хотя бы одного покупателя из Москвы.

select name
from my_schema.cust
where rating >= any 
(select rating
from my_schema.cust
where city = 'Moscow');
