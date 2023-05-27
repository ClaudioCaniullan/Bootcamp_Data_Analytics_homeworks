-- ejercicio 1
SELECT first_name, department_id, hire_date
FROM employees
ORDER BY department_id, hire_date DESC;


-- ejercicio 2
SELECT * 
FROM employees
ORDER BY hire_date desc;


-- ejercicio 3
SELECT *
FROM employees
WHERE job_id ='SA_MAN'
ORDER BY salary;


-- ejercicio 4
SELECT first_name, last_name
FROM employees
WHERE department_id =10
OR department_id=80
OR department_id=20;


-- ejercicio 5
SELECT department_id, MIN(salary), MAX(salary), AVG(salary)
FROM employees
GROUP BY department_id;


-- ejercicio 6
SELECT department_id AS "Codigo del Departamento"
,job_id AS "Puesto de Trabajo"
,COUNT(*)
FROM employees
GROUP BY department_id,job_id
HAVING COUNT(*)=1;


-- ejercicio 7
SELECT department_id AS "Codigo del Departamento"
, COUNT(*)
FROM employees
GROUP BY department_id
HAVING COUNT(*)>10;