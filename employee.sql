-- 1. List all employee first and last names only that live in Calgary.

SELECT first_name, last_name, city FROM employee
WHERE city = 'Calgary';

-- 2. Find the birthdate for the youngest employee.

SELECT birth_date FROM employee
ORDER BY birth_date DESC
Limit 1;

-- 3. Find the birthdate for the oldest employee.

SELECT birth_date FROM employee
ORDER BY birth_date
Limit 1;

-- 4. Find everyone that reports to Nancy Edwards (use the ReportsTo column).

SELECT * FROM employee
WHERE Reports_To = 1;

-- 5. Count how many people live in Lethbridge.

SELECT COUNT(city) FROM employee
WHERE city = 'Lethbridge'