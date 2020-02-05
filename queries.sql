SELECT
  d.id,
  d.dept_name as department,
  e.emp_name as Manager_Name
FROM
  department d
  RIGHT JOIN
  employee e
  ON
    d.manager = e.id;

  SELECT d.id, d.dept_name, d.manager FROM department d;

  SELECT
  e.emp_name as Full_Name,
  p.project_name as project
FROM
  employee e
  JOIN
  employee_project ep
  ON e.id = ep.emp_id
  JOIN
  project p
  ON ep.project_id = p.id;

SELECT 
COUNT(*)
FROM
employee e
JOIN
department d
ON d.id = e.department
WHERE
d.dept_name = 'Sales';

SELECT
e.emp_name as Full_Name,
p.project_name
FROM
employee e
JOIN
employee_project ep
ON e.id = ep.emp_id
JOIN
project p
ON ep.project_id = p.id
WHERE
p.project_name = 'Watch paint dry';

SELECT
e.emp_name as Full_Name,
p.project_name as project,
d.dept_name as department
FROM
department d
JOIN
employee e
ON d.id = e.department
JOIN
employee_project ep
ON e.id = ep.emp_id
JOIN
project p
ON ep.project_id = p.id
WHERE
p.project_name = 'Watch paint dry'
AND
d.dept_name = 'Warehouse';