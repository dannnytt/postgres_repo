-- 6. Вывести количество заказов для всех уникальных пар продукт-покупатель, между которыми осуществлялись заказы.
select distinct pnum, cnum, count(onum)
from my_schema.ord
group by pnum, cnum
order by pnum, cnum;
