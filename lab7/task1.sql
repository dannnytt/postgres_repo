-- 1. Для каждого продавца в таблице ord пронумеровать его заказы в порядке уменьшения их объема (amt). 
-- 	  Необходимо использовать функции row_number(), rank(), dense_rank().
--    В чем их отличие?

SELECT snum, onum, amt,
row_number() OVER (PARTITION BY snum ORDER BY amt DESC),
rank() OVER (PARTITION BY snum ORDER BY amt DESC),
dense_rank() OVER (PARTITION BY snum ORDER BY amt DESC)
FROM my_schema.ord;
