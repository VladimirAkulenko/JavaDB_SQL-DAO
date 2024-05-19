create table "netology"."CUSTOMERS"
(
    id           bigserial primary key,
    name         varchar(30) not null,
    surname      varchar(30) not null,
    age          int         not null check (age > 0),
    phone_number varchar(18) not null
);

create table netology."ORDERS"
(
    id           bigserial primary key,
    "date"       date not null,
    customer_id  int  not null,
    product_name varchar(200),
    amount       int  not null check (amount > 0),
    foreign key (customer_id) references "netology"."CUSTOMERS" (id)
);