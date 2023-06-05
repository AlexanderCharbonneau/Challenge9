-- Create Tables
create table departments(
	dept_no VARCHAR(8) PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

create table dept_emp(
	emp_no INT PRIMARY KEY,
	dept_no VARCHAR(8),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

create table dept_manager(
	dept_no VARCHAR(8),
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no)
);

create table salaries(
	emp_no INT,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no)
);

create table titles(
	title_id VARCHAR(8) PRIMARY KEY,
	title VARCHAR(30) NOT NULL
);

create table employees(
	emp_no INT,
	emp_title_id VARCHAR(8) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(10),
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
