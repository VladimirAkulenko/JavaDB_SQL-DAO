insert into "netology"."CUSTOMERS" (name, surname, age, phone_number)
values ('Alexey', 'Gershkovich', 32, '+7 (970) 825-81-26'),
       ('Konstantin', 'Bolotnikov', 24, '+7 (977) 350-73-40'),
       ('Ksenia', 'Poda', 18, '+7 (968) 815-71-23'),
       ('Claudia', 'Ivanova', 53, '+7 (977) 134-85-66');

insert into netology."ORDERS" ("date", customer_id, product_name, amount)
values ('2022-06-15', 1, 'Kitchen table', 1),
       ('2022-05-04', 3, 'Chair', 4),
       ('2022-06-15', 1, 'Chair', 6),
       ('2022-06-19', 2, 'Sofa', 1);
