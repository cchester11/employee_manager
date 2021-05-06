DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS employee_role;
DROP TABLE IF EXISTS employee;

CREATE TABLE department(
  id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT, 
  department_name VARCHAR(30));

CREATE TABLE employee_role(
  id INTEGER PRIMARY KEY AUTO_INCREMENT, 
  title VARCHAR(30),
  salary DECIMAL,
  department_id INTEGER NOT NULL 
);

CREATE TABLE employee(
  id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INTEGER,
  manager_id INTEGER  
);