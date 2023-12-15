
CREATE DATABASE shop;
USE shop;

CREATE TABLE Customer (
	id INT,
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    country VARCHAR(255),
    created_at DATETIME
);

CREATE TABLE Customer_login (
    id INT,
    account_id INT PRIMARY KEY,
    password_hashed VARCHAR(255),
    locked_out BOOLEAN,
    FOREIGN KEY (account_id) REFERENCES Customer(customer_id)
);

CREATE TABLE loginAttemptHistory (
    id INT,
    account_id INT,
    login_successful BOOLEAN,
    attempted_at DATETIME,
    FOREIGN KEY (account_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Payment (
    id INT,
    payment_id INT PRIMARY KEY,
    payment_date DATE,
    payment_method VARCHAR(50)
);

CREATE TABLE Category (
    id INT,
    category_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE Product (
    id INT,
    product_id INT PRIMARY KEY,
    SKU VARCHAR(50),
    price DECIMAL(10, 2),
    description TEXT,
    stock INT,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);
CREATE TABLE orderStatusCode (
    status_code_id INT PRIMARY KEY,
    description VARCHAR(256)
);
CREATE TABLE order_ (
    id INT,
    customer_id INT,
    status_code_id INT,
    customer_comments VARCHAR(256),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (status_code_id) REFERENCES orderStatusCode(status_code_id)
);

ALTER TABLE order_ ADD INDEX (id);


CREATE TABLE order_item (
    id INT,
    order_id INT,
    product_id INT,
    quantity INT,
    price FLOAT,
    FOREIGN KEY (order_id) REFERENCES order_(id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE shoppingcartItem (
    id INT,
    customer_id INT,
    product_id INT,
    quantity INT,
    price FLOAT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE Shipment (
    id INT,
    shipment_id INT PRIMARY KEY,
    shipment_date DATE,
    to_address VARCHAR(255),
    from_address VARCHAR(255),
    order_id INT,
    FOREIGN KEY (order_id) REFERENCES order_(id)
);
