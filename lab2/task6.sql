-- Выполнить задания 5-6 с использованием функций работы с датами
--     6. Вывести для каждой уникальной даты заказа запись. состоящую из трех столбцов: день в формате «dd», месяц в формате «mm», год в формате «yy».

select distinct to_char(ord_date, 'dd') as day, to_char(ord_date, 'mm') as month, to_char(ord_date, 'yy') as year from my_schema.ord;
