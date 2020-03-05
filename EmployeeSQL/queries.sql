--Data Analysis
--1.
SELECT e.employeeid, e.last_name, e.first_name, e.gender, s.salary
FROM Salary As s
INNER JOIN Employees AS e
ON e.employeeid=s.employeeid
--2.
SELECT e.employeeid, e.last_name, e.first_name, e.hire_date
FROM employees AS e
WHERE EXTRACT(year FROM hire_date) = 1986
--3.
SELECT m.departmentid, d.name, m.employeeid, e.last_name, e.first_name, m.from_date, m.to_date
FROM dept_manager AS m
JOIN departments AS d ON m.departmentid=d.departmentid
JOIN employees AS e ON m.employeeid=e.employeeid
--4.
SELECT de.employeeid, e.last_name, e.first_name, d.name
FROM dept_emp AS de
JOIN employees AS e ON de.employeeid=e.employeeid
JOIN departments AS d ON de.departmentid=d.departmentid
--5.
SELECT employeeid, last_name, first_name
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
--6.
SELECT e.employeeid, e.last_name, e.first_name, d.name
FROM dept_emp AS de
JOIN employees AS e
ON de.employeeid=e.employeeid
JOIN departments AS d
ON de.departmentid=d.departmentid
WHERE d.name = 'Sales'
--7.
SELECT e.employeeid, e.last_name, e.first_name, d.name
FROM dept_emp AS de
JOIN employees AS e
ON de.employeeid=e.employeeid
JOIN departments AS d
ON de.departmentid=d.departmentid
WHERE d.name = 'Sales' OR d.name = 'Development'
--8.
SELECT last_name, COUNT(last_name) AS "Count"
FROM employees
GROUP BY last_name
ORDER BY "Count" DESC