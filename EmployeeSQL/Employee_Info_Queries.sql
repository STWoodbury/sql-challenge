--1. List the employee number, last name, first name, sex, and 
--salary of each employee
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
LEFT JOIN salaries as s 
ON e.emp_no = s.emp_no;

--2. List the first name, last name, and hire date 
--for the employees who were hired in 1986 
SELECT first_name, last_name, hire_date
FROM employees
WHERE date_part('year', hire_date) = 1986
ORDER BY hire_date ASC;

--3. List the manager of each department along with their department number, 
--department name, employee number, last name, and first name 
SELECT d.dept_no, dp.dept_name, d.emp_no, e.last_name, e.first_name
FROM dept_manager as d
JOIN departments as dp
ON d.dept_no = dp.dept_no
JOIN employees as e
ON d.emp_no = e.emp_no;

--4. List the department number for each employee along with 
--that employee’s employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name,  d.dept_no, dp.dept_name
FROM department_emp as d 
JOIN employees as e 
ON d.emp_no = e.emp_no
JOIN departments as dp
ON d.dept_no = dp.dept_no;

--5. List first name, last name, and sex of each employee 
--whose first name is Hercules and whose last name begins with the letter B 
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--6. List each employee in the Sales department, 
--including their employee number, last name, and first name
SELECT emp_no, last_name, first_name
FROM employees 
WHERE emp_no IN (
	SELECT emp_no 
	FROM department_emp
	WHERE dept_no IN (
		SELECT dept_no
		FROM departments
		WHERE dept_name = 'Sales'
		)
	);
	
--7. List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name AS department_name
FROM employees as e
JOIN department_emp as d
ON e.emp_no = d.emp_no
JOIN departments as dp
ON d.dept_no = dp.dept_no
WHERE dp.dept_name 
IN ('Sales', 'Development');

--8. List the frequency counts, in descending order, 
--of all the employee last names 
--(that is, how many employees share each last name) 
SELECT last_name, COUNT(*) as surname_frequency
FROM employees
GROUP BY last_name
ORDER BY surname_frequency DESC;