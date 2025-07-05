-- Количество заказов на каждого клиента
SELECT customers.name, COUNT(orders.id) AS count_orders
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id
GROUP BY customers.name;


-- Список клиентов и даты их заказов
SELECT customers.name, orders.order_date
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id;


-- Список клиентов, дата заказа и название товара
SELECT customers.name, orders.order_date, products.product_name
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id
INNER JOIN order_items ON orders.id = order_items.order_id
INNER JOIN products ON order_items.product_id = products.id;
