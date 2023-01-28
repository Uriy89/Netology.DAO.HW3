create table CUSTOMERS
(
    id           serial,
    name         char(20) not null check ( name != ''),
    surname      char(20) not null check ( surname != ''),
    age          int check (age > 0),
    phone_number char(10),
    PRIMARY KEY (id)
);

create table ORDERS
(
    id           serial,
    date         timestamp not null,
    customer_id  int,
    product_name char(255),
    amount       smallint check ( amount > 0),
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES customers (id)
)