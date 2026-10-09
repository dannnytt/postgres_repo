--    8. Вывести из таблицы заказов уникальные номера продавцов
--    и показатель активности каждого из них на основе количества заказов:
--    «активный» — 4+ заказа,
--    «умеренный» — 2-3 заказа,
--    «неактивный» — 1 заказ.

select distinct(snum),
  case 
    when count(onum) >= 4 then 'активный'
    when count(onum) > 1 and count(onum) < 4 then 'умеренный'
    when count(onum) = 1 then 'неактивный'
  end as activity
from my_schema.ord
group by snum;
