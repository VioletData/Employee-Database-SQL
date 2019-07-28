
--Create new table
CREATE TABLE departments(
	dept_no VARCHAR(5) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(25) NOT NULL
);

SELECT * FROM departments;

--Create new table
CREATE TABLE dept_emp(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(5),
	from_date DATE,
	to_date DATE
);

--Add primary key
ALTER TABLE dept_emp
ADD COLUMN id SERIAL PRIMARY KEY;

--Add foreign key
ALTER TABLE dept_emp
ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no);

ALTER TABLE dept_emp
ADD FOREIGN KEY (dept_no) REFERENCES departments(dept_no);

SELECT * FROM dept_emp;

--Create new table
CREATE TABLE dept_manager(
	dept_no VARCHAR(5),
	emp_no INTEGER,
	from_date DATE,
	to_date DATE
);

--Add primary key
ALTER TABLE dept_manager
ADD COLUMN id SERIAL PRIMARY KEY;

--Add foreign key
ALTER TABLE dept_manager
ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no);

ALTER TABLE dept_manager
ADD FOREIGN KEY (dept_no) REFERENCES departments(dept_no);

SELECT * FROM dept_manager;

--Create new table
CREATE TABLE employees(
	emp_no INTEGER NOT NULL PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date DATE
);

SELECT * FROM employees;

--Create new table
CREATE TABLE salaries(
	emp_no INTEGER,
	salary INTEGER,
	from_date DATE,
	to_date DATE
);

--Add primary key
ALTER TABLE salaries
ADD COLUMN id SERIAL PRIMARY KEY;

--Add foreign key
ALTER TABLE salaries
ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no);

SELECT * FROM salaries;


--If table already exists - used as tables were being modified with primary keys, etc.
DROP TABLE titles;

--Create new table
CREATE TABLE titles(
	emp_no INTEGER,
	title VARCHAR,
	from_date DATE,
	to_date DATE
);

--Add primary key
ALTER TABLE titles
ADD COLUMN id SERIAL PRIMARY KEY;

--Add foreign key
ALTER TABLE titles
ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no);

SELECT * FROM titles;

