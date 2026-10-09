-- 7. Для каждого заказа вывести количество заказов, 
--    в которых объем (amt) отличается от объема (amt) текущего заказа не более, 
--    чем на 1 в любую сторону. Используйте фрейм вида RANGE.

SELECT *,
COUNT(*) OVER (ORDER BY amt RANGE BETWEEN 1 PRECEDING AND 1 FOLLOWING) as similar_amt_count
FROM my_schema.ord
ORDER BY amt;
