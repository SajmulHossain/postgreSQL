CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

INSERT INTO orders (customer_id, order_date, total_amount) VALUES 
    (1, '2021-01-05', 100.50),
    (2, '2023-01-07', 200.75),
    (1, '2023-01-08', 150.25),
    (3, '2024-01-10', 300.00),
    (2, '2024-01-15', 180.50),
    (3, '2025-01-20', 220.25),
    (1, '2026-01-25', 90.00),
    (2, '2024-01-28', 120.75),
    (3, '2022-02-01', 250.50),
    (1, '2022-02-05', 180.25);

SELECT customer_id, count(*) FROM orders GROUP BY customer_id HAVING count(*) > 2;

SELECT extract(MONTH FROM order_date) as order_month, sum(total_amount) FROM orders WHERE extract(YEAR FROM order_date) = 2022 GROUP BY order_month;

