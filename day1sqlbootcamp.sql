

CREATE TABLE orders (
    orderID SERIAL PRIMARY KEY,
	customerID TEXT not null,
    employeeID INTEGER NOT NULL,
    orderDate DATE NOT NULL,
    requiredDate DATE,
    shippedDate DATE,
    shipperID INTEGER,
    freight NUMERIC(10, 2)
);

select * from orders;

CREATE TABLE order_details (
    orderID INTEGER NOT NULL,
    productID INTEGER NOT NULL,
    unitPrice NUMERIC(10, 2) NOT NULL,
    quantity INTEGER NOT NULL,
    discount NUMERIC(10, 2) DEFAULT 0.00,
    PRIMARY KEY (orderID, productID)
);
select * from order_details;

CREATE TABLE customers
(
    customerid character varying(5) NOT NULL,
    companyname character varying(255) NOT NULL,
    contactname character varying(100) NOT NULL,
    contacttitle character varying(100) NOT NULL,
    city character varying(100) NOT NULL,
    country text,
    CONSTRAINT customers_pkey PRIMARY KEY (customerid)
);

ALTER TABLE customers
ALTER COLUMN customerid type TEXT;

select * from customers;

CREATE TABLE products (
    productID integer PRIMARY KEY,
    productName TEXT NOT NULL,
    quantityPerUnit TEXT,
    unitPrice NUMERIC(10, 2),
    discontinued BOOLEAN,
    categoryID INTEGER
);

select * from products;

alter table products
add constraint fk_categories
foreign key (categoryID)
REFERENCES Categories(CategoryID)
ON update cascade
on delete cascade;

CREATE TABLE categories (
    categoryID SERIAL PRIMARY KEY,
    categoryName TEXT NOT NULL,
    description TEXT
);
select * from categories;

CREATE TABLE employees (
    employeeID SERIAL PRIMARY KEY,
    employeeName TEXT NOT NULL,
    title TEXT, 
    city TEXT,
    country TEXT,
    reportsTo INTEGER
);
select * from employees;
.
CREATE TABLE shippers (
    shipperID SERIAL PRIMARY KEY,
    companyName TEXT NOT NULL
);
select * from shippers;

                   







