-- 2. Выполнить задание 1, только теперь нумерование должно производиться для каждой уникальной пары продавец-покупатель. 
--    Необходимо дополнительно использовать оператор window для сокращения записи у одинаковых партиций.

SELECT snum, cnum, onum, amt,
row_number() OVER seller_customer_window,
rank() OVER seller_customer_window,
dense_rank() OVER seller_customer_window
FROM my_schema.ord
WINDOW seller_customer_window AS (PARTITION BY snum, cnum ORDER BY amt DESC);
