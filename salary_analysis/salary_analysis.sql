-- 1. Средняя зарплата по всем сотрудникам
SELECT AVG(salary) AS avg_salary FROM employees;

-- 2. Сотрудники с зарплатой выше средней
SELECT name, salary FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- 3. Максимальная и минимальная зарплата
SELECT MAX(salary) AS max_salary, MIN(salary) AS min_salary
FROM employees;

-- 4. Сумма зарплат по каждому городу
SELECT city, SUM(salary) AS total_salary
FROM employees
GROUP BY city;

-- 5. Средняя зарплата в каждом отделе
SELECT department, AVG(salary) AS avg_dept_salary
FROM employees
GROUP BY department
HAVING avg_dept_salary > 50000;
