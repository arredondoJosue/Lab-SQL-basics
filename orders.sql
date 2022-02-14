-- 1. Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id SERIAL, 
    product_name TEXT,
    product_price FLOAT, 
    quantity INTEGER
);

-- 2. Add 5 orders to the orders table.
    -- Make orders for at least two different people.
    -- person_id should be different for different people.

INSERT INTO orders (product_name, product_price, quantity)
VALUES ('pizza', 5.50, 1), ('fries', 1.20, 2), ('water', 0, 22), ('hotdog', 2, 15), ('bread', 1, 10);

-- 3. Select all the records from the orders table.

SELECT * FROM orders;

-- 4. Calculate the total number of products ordered.

SELECT COUNT(product_name) FROM orders;

-- 5. Calculate the total order price.

SELECT SUM(product_price * quantity) FROM orders;

-- 6. Calculate the total order price by a single person_id.

SELECT SUM(product_price * quantity) FROM orders
WHERE id = 3