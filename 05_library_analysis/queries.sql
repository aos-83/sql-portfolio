-- 📘 Анализ данных библиотеки
-- Автор: Ольга
-- Проект: library_analysis

-- 🔹 1. Самая старая книга
SELECT id, title, author_id, year, pages
FROM books
ORDER BY year ASC
LIMIT 1;

-- 🔹 2. Средний возраст авторов
-- Подразумеваем текущий год 2025
SELECT AVG(2025 - birth_year) AS avg_age 
FROM authors;

-- 🔹 3. Количество книг на каждого автора
SELECT author_id, COUNT(title) AS books_count
FROM books
GROUP BY author_id;

-- (Если есть таблица authors, можно сделать JOIN для вывода имени автора)
-- SELECT authors.name, COUNT(books.title) AS books_count
-- FROM books
-- INNER JOIN authors ON books.author_id = authors.id
-- GROUP BY authors.name;
