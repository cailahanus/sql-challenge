-- Table 1

CREATE TABLE departments(
dept_no VARCHAR(5) PRIMARY KEY,
dept_name VARCHAR(255) NOT NULL
);

-- Table 2

CREATE TABLE employee_salary(
emp_no INT PRIMARY KEY,
salary INT NOT NULL
);

-- Table 3

CREATE TABLE job_title(
title_id VARCHAR(5) PRIMARY KEY,
title VARCHAR(255) NOT NULL
);

-- Table 4

CREATE TABLE employees(
emp_no INT PRIMARY KEY,
emp_title_id VARCHAR(5),
birth_date DATE,
first_name VARCHAR(255),
last_name VARCHAR(255),
sex CHAR(1),
hire_date DATE,
FOREIGN KEY (emp_title_id) REFERENCES job_title(title_id),
FOREIGN KEY (emp_no) REFERENCES employee_salary(emp_no)
);

-- Table 5

CREATE TABLE dept_manager(
dept_no VARCHAR(5),
emp_no INT,
PRIMARY KEY (emp_no, dept_no),
FOREIGN KEY (emp_no) REFERENCES employee_salary(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Table 6

CREATE TABLE dept_emp(
emp_no INT,
dept_no VARCHAR(5),
PRIMARY KEY (emp_no, dept_no),
FOREIGN KEY (emp_no) REFERENCES employee_salary(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);



