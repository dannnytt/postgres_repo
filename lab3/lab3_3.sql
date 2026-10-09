-- 3. Вывести для каждого продавца наименьший номер продукта, который он продавал.

select snum as seller_id, min(pnum) as min_order_id 
from my_schema.ord 
group by snum 
order by snum;
