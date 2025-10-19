Выбрать всех пользователей
SELECT * FROM users;

 Выбрать товары дороже 1000 рублей
SELECT product_name, price FROM products 
WHERE price > 1000;

Выбрать заказы и отсортировать по дате (сначала новые)
SELECT order_id, order_date, customer_name FROM orders 
ORDER BY order_date DESC;

Посчитать количество товаров в категории "Смартфоны"
SELECT COUNT(*) AS total_products FROM products 
WHERE category = 'Смартфоны';

Посчитать количество заказов у каждого клиента
SELECT customer_id, COUNT(order_id) AS orders_count FROM orders 
GROUP BY customer_id;

Выбрать все заказы с информацией о клиентах
SELECT o.order_id, o.order_date, c.customer_name, c.email
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

Добавить нового пользователя
INSERT INTO users (username, email, registration_date) 
VALUES ('yaroslav_fomenkov', 'fomahamster@yandex.ru', '2025-10-19');

Обновить цену товара
UPDATE products 
SET price = 2999 
WHERE product_id = 12345;

 Удалить товар, которого нет в наличии
DELETE FROM products 
WHERE quantity_in_stock = 0;

Выбрать 5 самых дорогих товаров в категории "Электроника"
SELECT product_name, price FROM products 
WHERE category = 'Электроника' 
ORDER BY price DESC 
LIMIT 5;
