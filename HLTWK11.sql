CREATE DATABASE PRODUCTION_INFO;

CREATE TABLE production_products (
	product_id CHAR (15) NOT NULL,
	product_name VARCHAR (255) NOT NULL,
	brand_id CHAR (15) NOT NULL,
	category_id INT NOT NULL,
	model_year INT NOT NULL,
	sell_price DECIMAL (10, 2) NOT NULL,
    PRIMARY KEY (product_id)
      
);

EXPLAIN production_products;

CREATE TABLE production_stock (
	store_loc INT,
	product_id CHAR (15),
	quantity INT,
    cost_price DECIMAL (10,2) NOT NULL,
	PRIMARY KEY (store_loc, product_id),
    FOREIGN KEY (product_id) REFERENCES production_products (product_id)
);

EXPLAIN production_stock;

ALTER TABLE production_products
DROP COLUMN model_year;

EXPLAIN production_products;

INSERT INTO production_products (product_id, product_name, brand_id, category_id, sell_price)
VALUES ('AEG-2203', 'Aeg LB 2-2 Mod', 'JUL', '1', '507.6'),
('AEG-3303', 'Aeg LB 3-3 Mod', 'JUL', '1', '540.6'),
('AEG-6603', 'Aeg LB 6-6 Mod', 'JUL', '1', '640.6'),
('AEG-9903', 'Aeg LB 9-9 Mod', 'JUL', '1', '740.6'),
('HUR-3203', 'Hur LB 3-2 Mod', 'JUL', '2', '585.9'),
('HUR-3303', 'Hur LB 3-3 Mod', 'JUL', '2', '625.6'),
('HUR-6603', 'Hur LB 6-6 Mod', 'JUL', '2', '685.9'),
('SIL-3303', 'Sil LB 3-3 Mod', 'LAP', '3', '440.5'),
('SIL-6603', 'Sil LB 6-6 Mod', 'LAP', '3', '540.5'),
('TOR-3303', 'Tor LB 3-3 Mod', 'RED', '4', '520.6');

SELECT * FROM production_products;

INSERT INTO production_stock (store_loc, product_id, quantity, cost_price)
VALUES ( '10', 'AEG-2203', '30', '304.56'),
( '10', 'AEG-3303', '24', '324.36'),
( '10', 'AEG-6603', '3', '384.36'),
( '10', 'AEG-9903', '4', '444.36'),
( '11', 'HUR-3203', '30', '351.54'),
( '11', 'HUR-3303', '31', '375.36'),
( '11', 'HUR-6603', '6', '411.54'),
( '12', 'SIL-3303', '28', '264.3'),
( '12', 'SIL-6603', '5', '324.3');

SELECT * FROM production_stock;

UPDATE production_stock
SET quantity  = '13'
WHERE product_id = 'SIL-3303';

SELECT * FROM production_stock;

DELETE FROM production_products
WHERE product_id ='TOR-3303';

SELECT * FROM production_products;

#links two tables for querying

SELECT production_products.product_id, production_stock.quantity
FROM production_products
INNER JOIN production_stock
ON production_products.product_id = production_stock.product_id;

SELECT *
FROM production_products
INNER JOIN production_stock
WHERE production_products.product_id = production_stock.product_id AND production_stock.quantity="30";

SELECT * FROM production_products;

SELECT * FROM production_products
WHERE brand_id = 'JUL';

SELECT * FROM production_products
ORDER BY sell_price;

SELECT * FROM production_products
WHERE sell_price between 550 and 700;

