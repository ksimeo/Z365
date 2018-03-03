insert into users (username, name, surname, password, authority, enabled, reg_date)
      values ('testuser@test.org', 'test', 'test', 'test', 'USER', TRUE, '2017-10-15');
insert into users (username, name, surname, password, authority, enabled, reg_date)
      values ('ksimeo@gmail.com', 'Maksym', 'Fedorenko', 'gorOD312', 'ADMIN', TRUE,'2017-10-15');
insert into users (username, name, surname, password, authority, enabled, reg_date)
      values ('nazarz@meta.ua', 'Nazar', 'Zatyshnyak', 'samarchuk', 'ADMIN', TRUE, '2017-10-15');
insert into users (username, name, surname, password, authority, enabled, reg_date)
      values ('gost', 'Host', '','test', 'USER', FALSE, '2017-10-15');

insert into product (name, measure_units, currency_type, price, coeff, is_actual) values
       ('Product type 1', 'CANISTER','UAH', 2.99, 0.59, '1');
insert into product (name, measure_units, currency_type, price, coeff, is_actual) values
       ('Product type 2', 'CANISTER','UAH', 0.99, 0.67,'1');

insert into customer (phone_number, name, surname, email, reg_date)
       values ('+380668202795', 'Yan', 'Braverman', 'yan.braverman@gmail.com', '2017-10-03');
insert into customer (phone_number, name, surname, email, reg_date)
       values ('+380938181491', 'Sergei', 'Polyakov', 'polyakov@mail.ru', '2017-10-15');
insert into customer (phone_number, name, surname, email, reg_date)
       values ('+380657550989', 'Mihail', 'Ivanov', 'mih99@gmail.com', '2017-10-15');
insert into customer (phone_number, name, surname, email, reg_date)
       values ('+380503222345', 'Stanislav', 'Popov', 's.popov@yandex.ua', '2017-10-15');
insert into customer (phone_number, name, surname, email, reg_date)
       values ('+380662905859', 'Natalia', 'Shatko', 'nvshatko@gmail.com', '2017-09-23');
insert into customer (phone_number, name, surname, email, reg_date)
       values ('+380955820041', 'Vitalik', 'Lebedev', 'vitos@i.ua', '2017-11-02');

insert into orders (amount, create_date, review_date, customer_id, product_id)
       values (23, '2017-10-15 19:04:21', NULL, '+380668202795', 1);
insert into orders (amount, create_date, review_date, customer_id, product_id)
       values (4, '2017-10-15 19:05:34', NULL, '+380938181491', 2);
insert into orders (amount, create_date, review_date, customer_id, product_id)
       values (5, '2017-10-15 19:07:18', '2017-10-19 17:04:21',  '+380657550989', 1);
insert into orders (amount, create_date, review_date, customer_id, product_id)
       values (16, '2017-10-15 19:09:02', '2017-10-19 17:04:32', '+380503222345', 2);
insert into orders (amount, create_date, review_date, customer_id, product_id)
       values (23, '2017-10-15 19:04:21', NULL, '+380668202795', 1);
insert into orders (amount, create_date, review_date, customer_id, product_id)
       values (4, '2017-10-15 19:05:34', NULL, '+380938181491', 2);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (5, '2017-10-15 19:07:18', '2017-10-19 17:04:21',  '+380657550989', 1);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (16, '2017-10-15 19:09:02', '2017-10-19 17:04:32', '+380503222345', 2);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (23, '2017-10-15 19:04:21', NULL, '+380668202795', 1);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (4, '2017-10-15 19:05:34', NULL, '+380938181491', 2);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (5, '2017-10-15 19:07:18', '2017-10-19 17:04:21',  '+380657550989', 1);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (16, '2017-10-15 19:09:02', '2017-10-19 17:04:32', '+380503222345', 2);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (23, '2017-10-15 19:04:21', NULL, '+380668202795', 1);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (4, '2017-10-15 19:05:34', NULL, '+380938181491', 2);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (5, '2017-10-15 19:07:18', '2017-10-19 17:04:21',  '+380657550989', 1);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (16, '2017-10-15 19:09:02', '2017-10-19 17:04:32', '+380503222345', 2);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (23, '2017-10-15 19:04:21', NULL, '+380668202795', 1);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (4, '2017-10-15 19:05:34', NULL, '+380938181491', 2);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (5, '2017-10-15 19:07:18', '2017-10-19 17:04:21',  '+380657550989', 1);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (16, '2017-10-15 19:09:02', '2017-10-19 17:04:32', '+380503222345', 2);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (23, '2017-10-15 19:04:21', NULL, '+380668202795', 1);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (4, '2017-10-15 19:05:34', NULL, '+380938181491', 2);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (5, '2017-10-15 19:07:18', '2017-10-19 17:04:21',  '+380657550989', 1);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (16, '2017-10-15 19:09:02', '2017-10-19 17:04:32', '+380503222345', 2);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (23, '2017-10-15 19:04:21', NULL, '+380668202795', 1);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (4, '2017-10-15 19:05:34', NULL, '+380938181491', 2);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (5, '2017-10-15 19:07:18', '2017-10-19 17:04:21',  '+380657550989', 1);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (16, '2017-10-15 19:09:02', '2017-10-19 17:04:32', '+380503222345', 2);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (23, '2017-10-15 19:04:21', NULL, '+380668202795', 1);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (4, '2017-10-15 19:05:34', NULL, '+380938181491', 2);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (5, '2017-10-15 19:07:18', '2017-10-19 17:04:21',  '+380657550989', 1);
insert into orders (amount, create_date, review_date, customer_id, product_id)
      values (16, '2017-10-15 19:09:02', '2017-10-19 17:04:32', '+380503222345', 2);


insert into question (create_date, name, phone_number, e_mail, message, review_date)
      values ('2017-10-15 19:07:18', 'Evgenii', '+380657550989', 'evgen24@mail.ru','Hello!..', '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
      values ('2017-10-15 19:05:34', 'Maks', '+380997510598', 'maks72@hotmail.com', 'Nichego ne rabotaet!',
              '2017-10-15 21:05:34');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
      values ('2017-10-15 19:07:18', 'Alex', '+380657550989', 'alexxx78@mail.ru','Perezvonite, pogaluista!..',
              '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
      values ('2017-10-15 19:07:18', 'Evgenii', '+380657550989', 'evgen24@mail.ru','Hello!..', '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:05:34', 'Maks', '+380997510598', 'maks75@hotmail.com', 'Nichego ne rabotaet!',
        '2017-10-15 21:05:34');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:07:18', 'Alex', '+380657550989', 'alexxx78@mail.ru','Perezvonite, pogaluista!..',
               '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:07:18', 'Evgenii', '+380657550989', 'evgen24@mail.ru','Hello!..', '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:05:34', 'Maks', '+380997510598', 'maks72@hotmail.com', 'Nichego ne rabotaet!',
        '2017-10-15 21:05:34');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:07:18', 'Alex', '+380657550989', 'alexxx78@mail.ru','Perezvonite, pogaluista!..',
               '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:07:18', 'Evgenii', '+380657550989', 'evgen24@mail.ru','Hello!..', '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:05:34', 'Maks', '+380997510598', 'maks72@hotmail.com', 'Nichego ne rabotaet!',
        '2017-10-15 21:05:34');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:07:18', 'Alex', '+380657550989', 'alexxx78@mail.ru','Perezvonite, pogaluista!..',
               '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:07:18', 'Evgenii', '+380657550989', 'evgen24@mail.ru','Hello!..', '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:05:34', 'Maks', '+380997510598', 'maks72@hotmail.com', 'Nichego ne rabotaet!',
               '2017-10-15 21:05:34');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:07:18', 'Alex', '+380657550989', 'alexxx78@mail.ru','Perezvonite, pogaluista!..',
               '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:07:18', 'Evgenii', '+380657550989', 'evgen24@mail.ru','Hello!..', '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:05:34', 'Maks', '+380997510598', 'maks72@hotmail.com', 'Nichego ne rabotaet!',
        '2017-10-15 21:05:34');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:07:18', 'Alex', '+380657550989', 'alexxx78@mail.ru','Perezvonite, pogaluista!..',
               '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:07:18', 'Evgenii', '+380657550989', 'evgen24@mail.ru','Hello!..', '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:05:34', 'Maks', '+380997510598', 'maks72@hotmail.com', 'Nichego ne rabotaet!',
        '2017-10-15 21:05:34');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:07:18', 'Alex', '+380657550989', 'alexxx78@mail.ru','Perezvonite, pogaluista!..',
               '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:07:18', 'Evgenii', '+380657550989', 'evgen24@mail.ru','Hello!..', '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:05:34', 'Maks', '+380997510598', 'maks72@hotmail.com', 'Nichego ne rabotaet!',
        '2017-10-15 21:05:34');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:07:18', 'Alex', '+380657550989', 'alexxx78@mail.ru','Perezvonite, pogaluista!..',
               '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:07:18', 'Evgenii', '+380657550989', 'evgen24@mail.ru','Hello!..', '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:05:34', 'Maks', '+380997510598', 'maks72@hotmail.com', 'Nichego ne rabotaet!',
        '2017-10-15 21:05:34');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:07:18', 'Alex', '+380657550989', 'alexxx78@mail.ru','Perezvonite, pogaluista!..',
               '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:07:18', 'Evgenii', '+380657550989', 'evgen24@mail.ru','Hello!..', '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:05:34', 'Maks', '+380997510598', 'maks72@hotmail.com', 'Nichego ne rabotaet!',
        '2017-10-15 21:05:34');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:07:18', 'Alex', '+380657550989', 'alexxx78@mail.ru','Perezvonite, pogaluista!..',
               '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:07:18', 'Evgenii', '+380657550989', 'evgen24@mail.ru','Hello!..', '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:05:34', 'Maks', '+380997510598', 'maks72@hotmail.com', 'Nichego ne rabotaet!',
        '2017-10-15 21:05:34');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:07:18', 'Alex', '+380657550989', 'alexxx@mail.ru','Perezvonite, pogaluista!..', NULL);
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:07:18', 'Evgenii', '+380657550989', 'evgen24@mail.ru','Hello!..', '2017-10-15 20:05:44');
insert into question (create_date, name, phone_number, e_mail, message, review_date)
       values ('2017-10-15 19:05:34', 'Maks', '+380997510598', 'maks72@hotmail.com', 'Nichego ne rabotaet!', NULL);

insert into culture (name, coefficient) values ('Cereals', 1.23);
insert into culture (name, coefficient) values ('Carrot', 2.84);
insert into culture (name, coefficient) values ('Helianthus', 1.8);
insert into culture (name, coefficient) values ('Raptus', 0.7);
insert into culture (name, coefficient) values ('Soybean', 1.2);
insert into culture (name, coefficient) values ('Potatoes', 2.4);
insert into culture (name, coefficient) values ('Sit amet', 0.5);
insert into culture (name, coefficient) values ('Cereals', 0.5);
insert into culture (name, coefficient) values ('Frumentum', 2.4);
insert into culture (name, coefficient) values ('Helianthus', 1.2);
insert into culture (name, coefficient) values ('Gardens', 0.7);
insert into culture (name, coefficient) values ('Uvarum', 2.84);
insert into culture (name, coefficient) values ('Brassica', 1.23);
insert into culture (name, coefficient) values ('Houseplants', 0.5);

insert into irrigation (name, coefficient) values ('Obrabotka nasinnya', 0.14);
insert into irrigation (name, coefficient) values ('Pozakorneva obrobka', 0.24);
insert into irrigation (name, coefficient) values ('Kapelne zroshennya', 0.34);