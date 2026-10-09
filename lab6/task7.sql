-- 7. Вывести полную информацию о заказе, его продавце, его продукте и его покупателе, только если:
--        количество товара (amt) в этом заказе больше, чем среднее по таблице,
--        товар не из Санкт-Петербурга, 
--        продавец совершил не более 10 заказов за все время,
--        рейтинг покупателя не ниже, чем хотя бы у одного покупателя из Москвы. 
-- Использовать для запроса блок оператора WITH и вывести результат.

WITH ord_summary_cte AS (
    SELECT 
        o.onum, 
        o.pnum, 
        o.cnum, 
        o.snum, 
        o.amt,
        c.name AS cust_name, 
        c.city AS cust_city,
        s.name AS seller_name, 
        p.name AS product_name,
        p.city AS product_city
    FROM my_schema.ord o
    JOIN my_schema.cust c ON o.cnum = c.cnum
    JOIN my_schema.sal  s ON o.snum = s.snum
    JOIN my_schema.prod p ON o.pnum = p.pnum
    WHERE 
        o.amt > (SELECT AVG(amt) FROM my_schema.ord)
        AND p.city <> 'Saint Petersburg'
        AND (SELECT COUNT(*) FROM my_schema.ord WHERE snum = s.snum) <= 10
        AND c.rating >= (SELECT MIN(rating) FROM my_schema.cust WHERE city = 'Moscow')
)
SELECT * FROM ord_summary_cte;
