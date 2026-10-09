-- 2. Создать индекс для ускорения сортировки таблицы покупателей по городу. Проверьте, используется ли созданный индекс при сортировке.

CREATE INDEX idx_cust_city ON my_schema.cust(city);

EXPLAIN ANALYZE
SELECT * FROM my_schema.cust ORDER BY city;
