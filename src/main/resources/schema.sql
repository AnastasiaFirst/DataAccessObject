CREATE TABLE netology.CUSTOMERS (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    surname VARCHAR(50),
    age INT,
    phone_number VARCHAR(15)
);

CREATE TABLE netology.ORDERS (
    id SERIAL PRIMARY KEY,
    date DATE,
    customer_id INT,
    product_name VARCHAR(100),
    amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(id) ON DELETE CASCADE
);
