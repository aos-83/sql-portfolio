-- 1. Уникальные города студентов
SELECT DISTINCT city FROM students;

-- 2. Студенты младше 21 года
SELECT name, age FROM students WHERE age < 21;

-- 3. Средний балл по всем студентам
SELECT AVG(score) AS avg_score FROM students;

-- 4. Студенты, чей балл ниже среднего
SELECT name, score FROM students
WHERE score < (SELECT AVG(score) FROM students);
