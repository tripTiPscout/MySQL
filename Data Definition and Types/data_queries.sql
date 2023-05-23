#Lab

#Task 1
CREATE TABLE `employees` (
id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL
);

CREATE TABLE `categories` ( 
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL
);

CREATE TABLE `products` (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
category_id INT NOT NULL
);

#Task 2
INSERT INTO employees (`first_name`, `last_name`)
VALUES ('Luke', 'Giggsy'), ('Mara', 'Maraeva'), ('Lefty', 'Right');

#Task 3
ALTER TABLE employees ADD middle_name VARCHAR(50);

#Task 4
ALTER TABLE `products`
ADD CONSTRAINT `fk_products_categories`
FOREIGN KEY `products`(`category_id`) REFERENCES `categories`(`id`);

#Task 5
ALTER TABLE `employees`
MODIFY COLUMN `middle_name` VARCHAR(100);
