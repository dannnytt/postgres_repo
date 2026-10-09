-- 2. Вывести наименьшее и наибольшее значение комиссионных из таблицы продавцов.
select min(comm) as min_value, max(comm) as max_value 
from my_schema.sal;
