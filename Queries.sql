
--Perform an INNER JOIN on the tables - Analysis 1
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;

-- Analysis 2
SELECT employees.first_name, employees.last_name
FROM employees
WHERE hire_date > '1985-12-31'
AND hire_date < '1987-01-01'
;

--Perform an INNER JOIN on the tables - Analysis 3
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, 
employees.first_name, dept_manager.from_date, dept_manager.to_date 
FROM dept_manager
INNER JOIN departments ON
departments.dept_no=dept_manager.dept_no
INNER JOIN employees ON
employees.emp_no=dept_manager.emp_no
;


--Perform an INNER JOIN on the tables - Analysis 4
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM  dept_manager
INNER JOIN departments ON
departments.dept_no=dept_manager.dept_no
INNER JOIN employees ON
employees.emp_no=dept_manager.emp_no
;

--Return data from the tables - Analysis 5
SELECT employees.first_name, employees.last_name
FROM employees
WHERE employees.first_name='Hercules'
AND 
employees.last_name LIKE 'B%'
;

--Return data from the tables - Analysis 6
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_manager
INNER JOIN departments ON
departments.dept_no=dept_manager.dept_no
INNER JOIN employees ON
employees.emp_no=dept_manager.emp_no
WHERE departments.dept_name='Sales'
;

--Return data from the tables - Analysis 7
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_manager
INNER JOIN departments ON
departments.dept_no=dept_manager.dept_no
INNER JOIN employees ON
employees.emp_no=dept_manager.emp_no
WHERE departments.dept_name='Sales'
OR departments.dept_name='Development'
;

--Return data from the tables - Analysis 8
SELECT last_name, COUNT (last_name)
FROM employees
GROUP BY last_name
ORDER BY 2 DESC
;