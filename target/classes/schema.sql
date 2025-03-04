CREATE TABLE CUSTOMERS (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(50),
    surname VARCHAR(50),
    age INT,
    phone_number VARCHAR(15)
);

create table ORDERS (
    id serial primary key,
    date date,
    customer_id int,
    product_name varchar(100),
    amount decimal(10, 2),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(id)
);