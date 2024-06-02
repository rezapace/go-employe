CREATE TABLE Department (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);

CREATE TABLE Project (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(id)
);

CREATE TABLE Employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255),
    gender CHAR(1),
    dob DATE,
    doj DATE,
    salary DECIMAL(10, 2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(id)
);

CREATE TABLE Dependent (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    name VARCHAR(100) NOT NULL,
    gender CHAR(1),
    birth_date DATE,
    relationship VARCHAR(50),
    FOREIGN KEY (employee_id) REFERENCES Employee(id)
);

CREATE TABLE Employee_Project (
    employee_id INT,
    project_id INT,
    PRIMARY KEY (employee_id, project_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(id),
    FOREIGN KEY (project_id) REFERENCES Project(id)
);