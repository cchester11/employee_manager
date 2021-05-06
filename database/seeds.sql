INSERT INTO department (id, department_name)
VALUES
  (1, 'Supplychain_management'),
  (2, 'Finances'),
  (3, 'Sales/Employee');

INSERT INTO employee_role (id, title, salary, department_id)
VALUES
  (1,'Supplychain_management', 100000.00, 1),
  (2, 'Finances', 100000.00, 2),
  (3, 'Sales/Employee', 50000.00, 3);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES
  (1, 'Ray', 'Lewis', 1, 1),
  (2, 'Lesley', 'Smith', 'Supervision', 2, 2),
  (3, 'Mario', 'Super', 'Sales/Employee', 3, 3);