-- 4. Вывести число уникальных продуктов, которые продавались продавцами с номерами 3001-3004.

select snum, count(distinct pnum) as unique_products  
from my_schema.ord
where snum in (3001, 3002, 3003, 3004)
group by snum;
