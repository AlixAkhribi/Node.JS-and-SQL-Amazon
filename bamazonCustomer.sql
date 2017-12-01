
DROP DATABASE IF EXISTS bamazonDB;
CREATE database bamazonDB;

USE bamazonDB;

CREATE TABLE products (
    item_id INT NOT NULL AUTO_INCREMENT,
    product_name  VARCHAR(100) NOT NULL,
    department_name  VARCHAR(100) NOT NULL,
    price INTEGER(10) NOT NULL,
    stock_quantity INTEGER (10) NOT NULL,
PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity )
VALUES ("Xbox One X", "Video Game Console", 500, 47);

INSERT INTO products (product_name, department_name, price, stock_quantity )
VALUES ("PlayStation 4 Pro", "Video Game Console", 400, 81);

INSERT INTO products (product_name, department_name, price, stock_quantity )
VALUES ("Nintendo Switch", "Video Game Console", 300, 34);

INSERT INTO products (product_name, department_name, price, stock_quantity )
VALUES ("Bench Press", "Fitness Equipment", 800, 7);

INSERT INTO products (product_name, department_name, price, stock_quantity )
VALUES ("Whey Protein", "Fitness Supplements", 49, 18);

INSERT INTO products (product_name, department_name, price, stock_quantity )
VALUES ("Washing Machine", "Appliances", 2450, 7);

INSERT INTO products (product_name, department_name, price, stock_quantity )
VALUES ("Fridge", "Appliances", 3700, 4);

INSERT INTO products (product_name, department_name, price, stock_quantity )
VALUES ("Skyrim", "Video Games", 15, 12);

INSERT INTO products (product_name, department_name, price, stock_quantity )
VALUES ("Rockstars", "Drinks", 2, 4);

INSERT INTO products (product_name, department_name, price, stock_quantity )
VALUES ("Lego Batmobile", "Toys", 400, 4);

SELECT * FROM products;
