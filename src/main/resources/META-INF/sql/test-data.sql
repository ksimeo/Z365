insert into user (login, password, role, reg_date) values ('testuser', 'test', 'USER', '2017-10-15');
insert into user (login, password, role, reg_date) values ('nazarz', 'samarchuk', 'ADMIN', '2017-10-15');
insert into user (login, password, role, reg_date) values ('gost', 'test', 'USER', '2017-10-15');

insert into product (name, orders_id, measure_units, currency_type, price, is_actual) values
       ('Product type 1', 1, 'CANISTER','UAH', 2.99, '1');
insert into product (name, orders_id, measure_units, currency_type, price, is_actual) values
       ('Product type 2', 2, 'CANISTER','UAH', 0.99, '0');

insert into customer (phone_number, orders_id, name, surname, email, reg_date)
       values ('+380997510598', 1, 'Alexei', 'Em', 'ksimeo@gmail.com', '2017-10-03');
insert into customer (phone_number, orders_id, name, surname, email, reg_date)
       values ('+380938181491', 2, 'Evgeniy', 'Polyakov', 'evg@mail.ru', '2017-10-15');
insert into customer (phone_number, orders_id, name, surname, email, reg_date)
       values ('+380657550989', 3, 'Mihail', 'Mudakov', 'mudak@hotmail.com', '2017-10-15');
insert into customer (phone_number, orders_id, name, surname, email, reg_date)
       values ('+380503222345', 4, 'Stas', 'Popov', 's.popov@yandex.ua', '2017-10-15');

insert into orders (amount, create_date, review_date, customer_id, product_id)
       values (23, '2017-10-15 19:04:21', NULL, '+380997510598', 1);
insert into orders (amount, create_date, review_date, customer_id, product_id)
       values (4, '2017-10-15 19:05:34', NULL, '+380938181491', 2);
insert into orders (amount, create_date, review_date, customer_id, product_id)
       values (5, '2017-10-15 19:07:18', '2017-10-19 17:04:21',  '+380657550989', 1);
insert into orders (amount, create_date, review_date, customer_id, product_id)
       values (16, '2017-10-15 19:09:02', '2017-10-19 17:04:32', '+380503222345', 2);

-- insert into customer (phone_number, orders_id, name, surname, email, reg_date)
-- values ('+380997510598', 1, 'Алексей', 'Эм', 'ksimeo@gmail.com', '2017-10-03');
-- insert into customer (phone_number, orders_id, name, surname, email, reg_date)
-- values ('+380938181491', 2, 'Евгений', 'Поляков', 'evg@mail.ru', '2017-10-15');
-- insert into customer (phone_number, orders_id, name, surname, email, reg_date)
-- values ('+380657550989', 3, 'Михаил', 'Мудаков', 'mih@hotmail.com', '2017-10-15');
-- insert into customer (phone_number, orders_id, name, surname, email, reg_date)
-- values ('+380503222345', 4, 'Стас', 'Попов', 's.popov@yandex.ua', '2017-10-15');
--
-- insert into product (name, orders_id, measure_units, currency_type, price, is_actual) values
--   ('Продукт типа 1', 1, 'CANISTER','UAH', 2.99, '1');
-- insert into product (name, orders_id, measure_units, currency_type, price, is_actual) values
--   ('Продукт типа 2', 2, 'CANISTER','UAH', 0.99, '0');