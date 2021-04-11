-- Drop Tables if Existing
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS titles CASCADE;
DROP TABLE IF EXISTS dept_emp CASCADE;
DROP TABLE IF EXISTS salaries CASCADE;
DROP TABLE IF EXISTS dept_manager CASCADE;

-- Create employees table

create TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title VARCHAR(35) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(35) NOT NULL,
	last_name VARCHAR(35) NOT NULL,
	sex VARCHAR(35) NOT NULL,
	hire_date DATE NOT NULL
);

-- Create departments table
create TABLE departments (
	dept_no VARCHAR(35) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(35) NOT NULL
);

-- Create titles table
create TABLE titles (
	emp_title VARCHAR NOT NULL,
	title_name VARCHAR(35) NOT NULL
);

-- Create department employee table
create TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(35) NOT NULL,
	FOREIGN KEY (emp_no) references employees (emp_no),
	FOREIGN KEY (dept_no) references departments (dept_no)
);

--Create salaries table
create TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) references employees (emp_no)
);

-- Create department manager table
create TABLE dept_manager (
	dept_no VARCHAR(35) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) references departments (dept_no),
	FOREIGN KEY (emp_no) references employees (emp_no)
);

-- View the tables to verify imports
Select * FROM employees
Select * FROM salaries
Select * FROM departments
Select * FROM dept_emp
Select * FROM dept_manager
Select * FROM titles
