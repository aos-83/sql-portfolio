-- 1. Общая сумма всех заказов
SELECT SUM(amount) AS total_revenue FROM orders;

-- 2. Средний чек (сумма одного заказа)
SELECT AVG(amount) AS average_check FROM orders;

-- 3. Заказы выше среднего чека
SELECT customer, amount FROM orders
WHERE amount > (
  SELECT AVG(amount) FROM orders
);

-- 4. Топ-5 заказов по сумме
SELECT customer, amount FROM orders
ORDER BY amount DESC
LIMIT 5;

-- 5. Количество заказов по городам
SELECT city, COUNT(*) AS orders_count
FROM orders
GROUP BY city
ORDER BY orders_count DESC;

-- 6. Сумма заказов по месяцам
SELECT MONTH(order_date) AS order_month, SUM(amount) AS monthly_total
FROM orders
GROUP BY MONTH(order_date)
ORDER BY order_month;
