DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS employee_role;
DROP TABLE IF EXISTS department;

CREATE TABLE department(
  id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT, 
  department_name VARCHAR(30));

CREATE TABLE employee_role(
  id INTEGER PRIMARY KEY AUTO_INCREMENT, 
  title VARCHAR(30),
  salary DECIMAL,
  department_id INTEGER ,
  CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE SET NULL
);

CREATE TABLE employee(
  id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  emp_role_id INTEGER,
  CONSTRAINT role_key FOREIGN KEY (emp_role_id) REFERENCES employee_role(id) ON DELETE SET NULL   
);