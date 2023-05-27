-- ejercicio 1
SELECT  e1.employee_id||' '||e1.first_name||' '||e1.last_name   AS Empleado
,e2.employee_id||' '||e2.first_name||' '||e2.last_name AS Jefe
FROM employees e1, employees e2
WHERE e1.manager_id=e2.employee_id;


--- ejercicio 2
SELECT r.region_id, region_name, country_name
FROM regions r JOIN countries c ON r.region_id=c.region_id;


-- ejercicio 3 
SELECT e.employee_id, first_name, last_name,start_date, end_date
FROM employees e JOIN job_history j 
ON e.employee_id=j.employee_id;


-- ejercicio 4
SELECT job_title, salary
FROM employees e, jobs j 
WHERE e.job_id=j.job_id
AND manager_id=100 
OR manager_id = 125 AND salary > 6000;

-- ejercicio 5
SELECT first_name||' '||last_name AS empleado, country_name AS pais
FROM employees e, departments d, locations l, countries c 
WHERE e.department_id=d.department_id 
AND d.location_id=l.location_id
AND l.country_id=c.country_id
AND country_name LIKE 'C%';


-- ejercicio 6
SELECT employee_id Codigo, last_name||', '||first_name Nombres, Initcap(email)||'@eisi.ues.edu.sv' email,'('||substr(phone_number,1,3)||')  -  '||substr(phone_number,5,2)||'  -  '||substr(phone_number,8,4)||'  -  '||substr(phone_number,13,6) Telefono  
FROM employees
WHERE LENGTH(phone_number)>12 
ORDER BY 1

-- ejercicio 7

