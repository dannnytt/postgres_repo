-- 3. Для каждого продавца вывести всю информацию о нем и дополнительный столбец, 
--    в котором рассчитывается, во сколько раз его комиссионные выше, 
--    чем средние комиссионные по его городу (значение округлить до 1 цифры после запятой). 
--    Отсортировать выборку по городу и имени продавца.

--insert into my_schema.sal values 
--(3007, 'Eldorado', 0.13, 'Moscow'),
--(3008, 'Ozon', 0.2, 'Novosibirsk'),
--(3009, 'Wildberries', 0.19, 'Novosibirsk'),
--(3010, 'CityCenter', 0.10, 'Novosibirsk'),
--(3011, 'YandexMarket', 0.09, 'Moscow'),
--(3012, 'BiblioGlobus', 0.15, 'Saint Petersburg'),
--(3013, 'Enter', 0.17, 'Yekaterinburg'),
--(3014, 'Technopark', 0.16, 'Innopolis'),
--(3015, 'Regard', 0.14, 'Saint Petersburg'),
--(3016, 'Nix', 0.11, 'Innopolis');

SELECT 
    *,
    ROUND(comm / AVG(comm) OVER (PARTITION BY city), 1)
FROM my_schema.sal
ORDER BY city, name;
