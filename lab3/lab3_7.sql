-- 7. Вывести все даты, в которые в заказах участвовали ровно 2 продавца и более 1 продукта.

select ord_date, count(distinct snum) as sellers, count(distinct pnum) as products
from my_schema.ord
group by ord_date
having count(snum) = 2 and count(pnum) > 1
order by ord_date;
