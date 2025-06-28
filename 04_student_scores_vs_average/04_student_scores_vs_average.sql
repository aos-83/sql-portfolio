-- 📊 Проект 4: Анализ оценок студентов и сравнение с общим средним баллом
-- Цель: показать, как можно использовать агрегатные функции и подзапросы
-- Инструменты: SELECT, AVG(), WHERE, подзапросы (subqueries)
-- Дата: 2025-06-28
-- Средний балл по всем студентам
SELECT AVG(score) AS avg_score FROM grades;

-- Студенты, у которых балл ниже среднего
SELECT name, score
FROM students
JOIN grades ON students.id = grades.student_id
WHERE score < (SELECT AVG(score) FROM grades);

-- Студенты, у которых балл выше среднего
SELECT name, score
FROM students
JOIN grades ON students.id = grades.student_id
WHERE score > (SELECT AVG(score) FROM grades);
