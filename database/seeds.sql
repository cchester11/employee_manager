INSERT INTO department (department_name)
VALUES
  ('Supplychain_management'),
  ('Finances'),
  ('Sales/Employee');

INSERT INTO employee_role (title, salary, department_id)
VALUES
  ('Supplychain_management', 100000.00, 1),
  ('Finances', 100000.00, 2),
  ('Sales/Employee', 50000.00, 3);

INSERT INTO employee (first_name, last_name, emp_role_id)
VALUES
  ('Ray', 'Lewis', 1),
  ('Lesley', 'Smith', 2),
  ('Mario', 'Super', 3);