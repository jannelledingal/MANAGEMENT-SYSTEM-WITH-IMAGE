-- Create the Database
CREATE DATABASE IF NOT EXISTS management_system;
USE management_system;

-- 1. Create Categories Table (The "Type")
CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

-- 2. Create Brands Table (The "Company")
CREATE TABLE brands (
    id INT AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

-- 3. Create Main Products Table
-- This table links to the others using Foreign Keys
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    description TEXT,
    image_filename VARCHAR(255) NOT NULL, -- Stores the name of the file
    category_id INT,
    brand_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    -- Defining the relationships
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE SET NULL,
    FOREIGN KEY (brand_id) REFERENCES brands(id) ON DELETE SET NULL
) ENGINE=InnoDB;

-- ---------------------------------------------------------
-- 2. Insert Sample Data (For Testing JOINs)
-- ---------------------------------------------------------

INSERT INTO categories (category_name) VALUES ('Smartphone'), ('Laptop'), ('Peripheral');

INSERT INTO brands (brand_name) VALUES ('Apple'), ('Logitech'), ('Asus');

-- Example Record (Note: image_filename is just a string pointing to a folder)
INSERT INTO products (product_name, description, image_filename, category_id, brand_id)
VALUES ('iPhone 15', 'Latest flagship model', 'iphone15.jpg', 1, 1);
