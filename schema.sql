DROP DATABASE IF EXISTS bamazon;
Create DATABASE bamazon;
USE bamazon;

Create TABLE products (
item_id INT AUTO_INCREMENT NOT NULL,
product_name VARCHAR(255) NOT NULL,
department_name VARCHAR(255) NOT NULL,
price DECIMAL(10,2) NOT NULL,
stock_quantity INT(10) NOT NULL,
Primary Key(item_id)
);

SELECT * FROM products;

INSERT INTO products (product_name, department_name, price, stock_quantity) 
Values ('55 inch LED TV', 'Electronics', 499.99, 25),
	   ('Gaming Console', 'Electronics', 199.99, 75),
       ('Murder, She Wrote: Season 1', 'Movies', 15.99, 2),
       ('Paper Towels', 'Home Supplies', 3.99, 150),
       ('Box of Oranges', 'Food', 10.75, 200),
       ('Hand of Bananas', 'Food', 8.99, 500),
       ('Counter Strike', 'Games', 25.00, 25),
       ('Risk', 'Board Games', 27.75, 47),
       ('Macguyver', 'Films', 10.99, 8),
       ('Yahtzee', 'Board Games', 19.95, 23);
