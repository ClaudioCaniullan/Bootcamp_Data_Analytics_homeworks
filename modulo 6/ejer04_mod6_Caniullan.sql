--ejercicio 1
SELECT first_name, last_name, salary
FROM employees 
WHERE salary =(SELECT MAX(salary) FROM employees);

--ejercicio 2
SELECT department_id, first_name, last_name, salary
FROM employees
WHERE salary=(SELECT MAX(salary)
                FROM employees     
                WHERE employees.DEPARTMENT_ID=employees.DEPARTMENT_ID);
				
--ejercicio 3
SELECT *
FROM employees e1
WHERE 2 =(SELECT COUNT(*) 
            FROM employees e2
            WHERE e1.department_id=e2.department_id);
			

--ejercicio 4
SELECT department_id, first_name||' '||last_name
FROM employees e1
WHERE(SELECT COUNT(*)
        FROM employees e2 
        WHERE e1.department_id=e2.department_id)<10 
        ORDER BY department_id;
		

--ejercicio 5
SELECT department_id, first_name|| ' '||last_name, salary
FROM employees
WHERE department_id =30 
AND salary=(SELECT MAX(salary)
                FROM employees 
                WHERE department_id=30);
				
				
				
--ejercicio 6 
SELECT department_id, department_name
FROM departments d
WHERE NOT EXISTS (SELECT *
                    FROM employees e 
                    WHERE e.department_id=d.department_id);
				
--ejercicio 7
SELECT first_name, last_name
FROM employees
WHERE department_id <> 30
AND salary > ALL (SELECT salary 
                FROM employees 
                WHERE department_id=30);

