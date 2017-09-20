-- task #1
SELECT * FROM customers
JOIN addresses ON customers.id = addresses.customer_id;

-- task #2
SELECT * FROM orders
JOIN line_items ON orders.id = line_items.order_id;

-- task #3
SELECT * FROM warehouse
JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
JOIN products ON warehouse_product.product_id = products.id
WHERE description = 'cheetos'; 

-- task #4
SELECT * FROM warehouse
JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
JOIN products ON warehouse_product.product_id = products.id
WHERE description = 'diet pepsi'; 

-- task #5
SELECT customers.first_name, COUNT (*) FROM orders
JOIN addresses ON orders.address_id = addresses.id
JOIN customers ON addresses.customer_id = customers.id 
GROUP BY customers.first_name;

--task #6

SELECT COUNT (*) FROM customers;

--task #7
SELECT COUNT (*) FROM products;

--task#8
SELECT SUM(warehouse_product.on_hand) FROM warehouse_product 
JOIN products ON warehouse_product.product_id = products.id 
WHERE products.description = 'diet pepsi';