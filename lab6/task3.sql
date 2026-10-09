-- 3. Добавьте в таблицу покупателей 1000 новых записей, например, используя команду, формирующую последовательности:
--    insert into cust values ( generate_series(1, 1000), 'test_name', 100, 'test_city' );
--    Проверьте, используется ли теперь созданный индекс при сортировке?

INSERT INTO my_schema.cust values (generate_series(1, 1000), 'test_name', 100, 'test_city');

EXPLAIN ANALYZE
SELECT * FROM my_schema.cust ORDER BY city;

DELETE FROM my_schema.cust WHERE cnum BETWEEN 1 AND 1000;
