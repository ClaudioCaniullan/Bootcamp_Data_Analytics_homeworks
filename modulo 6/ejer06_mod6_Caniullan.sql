-- ejercicio 1
CREATE FUNCTION listar_emp() RETURNS void AS $$
BEGIN
    SELECT FIRST_NAME, DEPARTMENT_ID, HIRE_DATE
    FROM EMPLOYEES
    ORDER BY DEPARTMENT_ID, HIRE_DATE DESC;
END;
$$ LANGUAGE plpgsql;
-- consulta ejemplo
SELECT listar_emp();


-- ejercicio 2
CREATE FUNCTION depto(depto INT) RETURNS void AS $$
BEGIN
    SELECT DEPARTMENT_ID "Codigo del Departamento", COUNT(*)
    , COUNT(*)
    FROM EMPLOYEES
    GROUP BY DEPARTMENT_ID
    HAVING COUNT(*)> depto;
END;
$$ LANGUAGE plpgsql;
-- consulta ejemplo
SELECT depto(5);



-- ejercicio 3
CREATE FUNCTION emp_depto(depto1 INT, depto2 INT ) RETURNS void AS $$
BEGIN
    SELECT first_name, last_name
    FROM EMPLOYEES
    WHERE DEPARTMENT_ID <> depto1
    AND salary > ALL (SELECT salary 
                    FROM EMPLOYEES 
                    WHERE DEPARTMENT_ID=depto2);  
END;
$$ LANGUAGE plpgsql;
-- consulta ejemplo
SELECT emp_depto(12,12);

-- ejercicio 4
CREATE FUNCTION depto(depto INT) RETURNS void AS $$
BEGIN
    SELECT DEPARTMENT_ID "Codigo del Departamento", COUNT(*)
    , COUNT(*)
    FROM EMPLOYEES
    GROUP BY DEPARTMENT_ID
    HAVING COUNT(*)> depto;
END;
$$ LANGUAGE plpgsql;
-- consulta ejemplo
SELECT depto(8);



-- ejercicio 5
CREATE OR REPLACE FUNCTION sumar(integer,integer) 
RETURNS integer 
AS 'select $1+$2;'
LANGUAGE SQL;
-- consulta ejemplo
SELECT sumar(2,2);


-- ejercicio 6
CREATE TABLE usuarios (
nombre varchar(30),
clave varchar(10)
);
--Insertamos un conjunto de registros:
INSERT INTO usuarios (nombre, clave) VALUES ('Marcelo','Boca');
INSERT INTO usuarios (nombre, clave) VALUES ('JuanPerez','Juancito');
INSERT INTO usuarios (nombre, clave) VALUES ('Susana','River');
INSERT INTO usuarios (nombre, clave) VALUES ('Luis','River');

CREATE OR REPLACE FUNCTION retornarclave(varchar) 
RETURNS varchar
AS 'select clave from usuarios where nombre=$1;'
LANGUAGE SQL;
-- consulta ejemplo 
SELECT retornarclave('Susana');
