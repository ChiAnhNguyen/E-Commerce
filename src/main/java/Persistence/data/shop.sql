
CREATE DATABASE shop;
USE shop;

CREATE TABLE Customer (

    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    country VARCHAR(255),
    created_at DATETIME,
    password VARCHAR(255)
);

CREATE TABLE Customer_login (

    account_id INT PRIMARY KEY AUTO_INCREMENT,
    
    locked_out BOOLEAN,
    FOREIGN KEY (account_id) REFERENCES Customer(customer_id)
);

CREATE TABLE loginAttemptHistory (

    account_id INT PRIMARY KEY AUTO_INCREMENT,
    login_successful BOOLEAN,
    attempted_at DATETIME,
    FOREIGN KEY (account_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Payment (

    payment_id INT PRIMARY KEY ,
    payment_date DATE,
    payment_method VARCHAR(50)
);

CREATE TABLE Category (

    category_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);

CREATE TABLE Product (

    product_id INT PRIMARY KEY AUTO_INCREMENT,
    SKU VARCHAR(50),
    price DECIMAL(10, 2),
    description TEXT,
    stock INT,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);
CREATE TABLE orderStatusCode (
    status_code_id INT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(256)
);
CREATE TABLE order_ (

    customer_id INT AUTO_INCREMENT,
    status_code_id INT,
    customer_comments VARCHAR(256),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (status_code_id) REFERENCES orderStatusCode(status_code_id)
);

ALTER TABLE order_ ADD INDEX (customer_id);


CREATE TABLE order_item (

    order_id INT AUTO_INCREMENT, 
    product_id INT,
    quantity INT,
    price FLOAT,
    FOREIGN KEY (order_id) REFERENCES order_(customer_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE shoppingcartItem (

    customer_id INT AUTO_INCREMENT,
    product_id INT,
    quantity INT,
    price FLOAT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE Shipment (

    shipment_id INT PRIMARY KEY AUTO_INCREMENT,
    shipment_date DATE,
    to_address VARCHAR(255),
    from_address VARCHAR(255),
    order_id INT,
    FOREIGN KEY (order_id) REFERENCES order_(customer_id)
);





