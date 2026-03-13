CREATE TABLE categories (

id INT AUTO_INCREMENT PRIMARY KEY,


category_name VARCHAR(100)

);



CREATE TABLE brands (

id INT AUTO_INCREMENT PRIMARY KEY,

brand_name VARCHAR(100)



);



CREATE TABLE products (

id INT AUTO_INCREMENT PRIMARY KEY,

category_id INT,

brand_id INT,

name VARCHAR(150),

description TEXT,

image VARCHAR(255),

FOREIGN KEY (category_id) REFERENCES categories(id),

FOREIGN KEY (brand_id) REFERENCES brands(id)



);
