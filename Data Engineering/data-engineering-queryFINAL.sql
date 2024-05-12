-- Table 1

CREATE TABLE departments(
dept_no VARCHAR(5) PRIMARY KEY,
dept_name VARCHAR(255) NOT NULL
);

-- Table 2

CREATE TABLE employees(
emp_no INT PRIMARY KEY,
emp_title_id VARCHAR(5) NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
sex CHAR(1) NOT NULL,
hire_date DATE NOT NULL,
FOREIGN KEY (emp_title_id) REFERENCES job_title(title_id)
);


-- Table 3

CREATE TABLE employee_salary(
emp_no INT NOT NULL,
salary INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Table 4

CREATE TABLE job_title(
title_id VARCHAR(5) PRIMARY KEY,
title VARCHAR(255) NOT NULL
);


-- Table 5

CREATE TABLE dept_manager(
dept_no VARCHAR(5) NOT NULL,
emp_no INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Table 6

CREATE TABLE dept_emp(
emp_no INT NOT NULL,
dept_no VARCHAR(5) NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);



