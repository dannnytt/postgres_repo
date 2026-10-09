-- 6. Для каждого продавца рассчитать, на сколько его каждый заказ больше (в единицах amt), 
--    чем предыдущий его же заказ, и меньше, 
--    чем следующий его же заказ (упорядочивание заказов - по дате, номеру заказа).


--где curr_amt – текущий amt, 
--diff_prev = текущий amt - предыдущий amt, 
--diff_next = следующий amt - текущий amt.

SELECT 
    snum,
    onum,
    ord_date,
    amt as curr_amt,
    amt - LAG(amt, 1, 0) OVER (PARTITION BY snum ORDER BY ord_date, onum) as diff_prev,
    LEAD(amt, 1, 0) OVER (PARTITION BY snum ORDER BY ord_date, onum) - amt as diff_next
FROM my_schema.ord
ORDER BY snum, ord_date, onum;
