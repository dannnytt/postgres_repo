-- 1. С помощью команды CREATE создать 4 таблицы: prod, cust, sal, ord. Таблицы должны иметь следующую структуру:
create table my_schema.prod(
	pnum int primary key,
	name varchar(20) not null,
	weight int not null,
	city varchar(20) not null
);

create table my_schema.cust(
	cnum int primary key,
	name varchar(20) not null,
	rating int not null,
	city varchar(20) not null
);

create table my_schema.sal(
	snum int primary key,
	name varchar(20) not null,
	comm numeric(7,2) not null,
	city varchar(20) not null
);

create table my_schema.ord(
	onum int primary key,
	pnum int not null,
	cnum int not null,
	snum int not null,
	amt int not null,
	foreign key (pnum) references my_schema.prod(pnum),
	foreign key (cnum) references my_schema.cust(cnum),
	foreign key (snum) references my_schema.sal(snum)
);

-- 3. С помощью команды INSERT заполнить таблицы следующими данными.
insert into my_schema.prod values (1001, 'Monitor',2000,'Obninsk');
insert into my_schema.prod values (1002, 'Keyboard',500,'Yekaterinburg' );
insert into my_schema.prod values (1003, 'Mouse', 100,'Novosibirsk');
insert into my_schema.prod values (1004, 'Printer',1500,'Saint Petersburg' );
insert into my_schema.prod values (1005, 'Hard drive',300, 'Moscow');
insert into my_schema.prod values (1006, 'Speakers', 700,'Novosibirsk');
insert into my_schema.cust values (2001, 'Ivanov', 100, 'Perm');
insert into my_schema.cust values (2002, 'Petrov', 100, 'Moscow');
insert into my_schema.cust values (2003, 'Vasiliev', 200, 'Yekaterinburg');
insert into my_schema.cust values (2004, 'Dmitriev', 200, 'Krasnoyarsk');
insert into my_schema.cust values (2005, 'Skvortcov', 300, 'Moscow');
insert into my_schema.cust values (2006, 'Avdeev', 400, 'Novosibirsk');
insert into my_schema.cust values (2007, 'Smirnov', 100, 'Omsk');
insert into my_schema.sal values (3001, 'DNS', 0.11, 'Novosibirsk');
insert into my_schema.sal values (3002, 'Citylink', 0.12, 'Saint Petersburg');
insert into my_schema.sal values (3003, 'MVideo', 0.15, 'Yekaterinburg');
insert into my_schema.sal values (3004, 'Inline', 0.13, 'Vladivistok');
insert into my_schema.sal values (3005, 'Elbrus', 0.11, 'Moscow');
insert into my_schema.ord values (4001, 1001, 2001, 3001, 2);
insert into my_schema.ord values (4002, 1001, 2002, 3001, 1);
insert into my_schema.ord values (4003, 1001, 2006, 3002, 10);
insert into my_schema.ord values (4004, 1001, 2003, 3003, 5);
insert into my_schema.ord values (4005, 1001, 2004, 3004, 5);
insert into my_schema.ord values (4006, 1002, 2001, 3005, 7);
insert into my_schema.ord values (4007, 1002, 2002, 3001, 8);
insert into my_schema.ord values (4008, 1003, 2001, 3002, 3);
insert into my_schema.ord values (4009, 1003, 2006, 3003, 1);
insert into my_schema.ord values (4010, 1003, 2007, 3004, 9);
insert into my_schema.ord values (4011, 1003, 2004, 3003, 6);
insert into my_schema.ord values (4012, 1004, 2002, 3001, 6);
insert into my_schema.ord values (4013, 1004, 2001, 3002, 4);
insert into my_schema.ord values (4014, 1004, 2001, 3004, 4);
insert into my_schema.ord values (4015, 1004, 2006, 3003, 3);
insert into my_schema.ord values (4016, 1004, 2004, 3005, 3);
insert into my_schema.ord values (4017, 1004, 2007, 3002, 2);
insert into my_schema.ord values (4018, 1005, 2001, 3005, 1);
insert into my_schema.ord values (4019, 1006, 2004, 3005, 2);
insert into my_schema.ord values (4020, 1006, 2003, 3002, 3);

-- 4. Проверить корректность выполненных операций с помощью простейших выборок для каждой таблицы с помощью команды SELECT 
SELECT * FROM my_schema.cust;
SELECT * FROM my_schema.ord;
SELECT * FROM my_schema.prod;
SELECT * FROM my_schema.sal;

-- 5. С помощью команды INSERT добавить в таблицу sal две новых записи о продавцах с номерами 3006 и 3007 со следующими данными:
insert into my_schema.sal values (3006, 'Astra', 0.16, 'Innopolis');
insert into my_schema.sal values(3007, 'RedSoft', 0.13, 'Moscow');

-- 6. С помощью команды DELETE удалить из таблицы sal запись о продавце с номером 3007.
delete from my_schema.sal where snum = 3007;

-- 7. С помощью команды ALTER добавить в таблицу ord новый столбец даты заказа с именем ord_date и типом данных date.
alter table my_schema.ord add column if not exists ord_date date;

-- 8. C помощью команды UPDATE установить дату всех заказов равной 1 сентября 2025 года.
update my_schema.ord set ord_date = '2025-09-01';

-- 9. C помощью команды UPDATE установить дату всех заказов для продукта с номером 1002 равной 31 декабря 2024 года.
update my_schema.ord set ord_date = '2024-12-31' where pnum = 1002;

-- 1. Вывести все строки из таблицы Заказов, для которых номер покупателя равен 2002.
select * from my_schema.ord where cnum = 2002;

-- 2. Вывести записи о покупателях с рейтингом выше или равным 200 со столбцами в следующем порядке: сnum, city, name, rating
select cnum, city, name, rating from my_schema.cust where rating >= 200; 

-- 3.Вывести без повторений номера всех продуктов, которые заказывали покупатели с номерами не более 2005.
select distinct pnum from my_schema.prod where pnum <= 2005;

-- 4.Вывести данные о всех покупателях с рейтингом меньше 200, если они находятся в Санкт-Петербурге или Новосибирске.
select * from my_schema.cust where rating < 200 and (city = 'Saint Petersburg' or city = 'Novosibirsk');

-- 5. Вывести тремя различными способами все заказы покупателей с номерами 2004, 2005, 2006.
select * from my_schema.ord where cnum = 2004 or cnum = 2005 or cnum = 2006;
select * from my_schema.ord where cnum between 2004 and 2006;
select * from my_schema.ord where cnum in (2004, 2005, 2006);
