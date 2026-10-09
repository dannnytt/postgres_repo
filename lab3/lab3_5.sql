-- 5. Вывести для каждого продукта его номер и общее количество продукта во всех заказах, если это количество не менее 15. 

select pnum, sum(amt) as total_count
from my_schema.ord
group by pnum
having sum(amt) >= 15
order by pnum;
