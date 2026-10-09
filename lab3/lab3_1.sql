-- 1. Вывести количество продуктов, в названии которых больше 7 букв.

select count(*) as prod_count 
from my_schema.prod 
where length(name) > 7;
