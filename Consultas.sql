#1. ¿Cuántos empleados son?
SELECT	count(*)
FROM   EMPLEADOS;

#2. ¿Cuántos empleados por sede?
SELECT	count(*)
FROM   EMPLEADOS
WHERE SEDE = '2';

SELECT	count(*)
FROM   EMPLEADOS
WHERE SEDE = '1';

SELECT	count(*)
FROM   EMPLEADOS
WHERE SEDE = '4';

SELECT	count(*)
FROM   EMPLEADOS
WHERE SEDE = '5';

SELECT	count(*)
FROM   EMPLEADOS
WHERE SEDE = '3';

#3. ¿Cuántos empleados por estrato?
SELECT	count(*)
FROM   EMPLEADOS
WHERE ESTRATO = '1';

SELECT	count(*)
FROM   EMPLEADOS
WHERE ESTRATO = '2';

SELECT	count(*)
FROM   EMPLEADOS
WHERE ESTRATO = '3';

SELECT	count(*)
FROM   EMPLEADOS
WHERE ESTRATO = '4';

SELECT	count(*)
FROM   EMPLEADOS
WHERE ESTRATO = '5';

SELECT	count(*)
FROM   EMPLEADOS
WHERE ESTRATO = '6';

#4. ¿Cuál es el empleado más nuevo?
SELECT	*
FROM   EMPLEADOS
WHERE FECHA_DE_CONTRATACION = (
	SELECT MAX(fecha_de_contratacion)
	FROM empleados);

#5. ¿Cuál es el empleado más antiguo?
SELECT	*
FROM   EMPLEADOS
WHERE FECHA_DE_CONTRATACION = (
	SELECT MIN(fecha_de_contratacion)
	FROM empleados);

#6. Consultar el nombre, sede y cargo del empleado con CC igual 10662101
SELECT	NOMBRES, SEDE, CARGO
FROM   EMPLEADOS
WHERE CC = 10662101

#7. Un empleado fue despedido de la compañía y por Habes Data autorizaron eliminar todos sus datos de la base de datos con CC Igual 10188530
DELETE FROM EMPLEADOS
WHERE (CC = 10188530);

#8. Consultar todos los empleados cuyo ingreso en la compañía estén entre los años 2000 y 2005
SELECT *
FROM EMPLEADOS
WHERE YEAR(FECHA_DE_CONTRATACION) BETWEEN '2000' AND '2005';

#9. Obtener el nombre y edad de los empleados más jóvenes y más antiguos y ordene el nombre de manera decreciente
SELECT	NOMBRES, EDAD
FROM   EMPLEADOS
WHERE FECHA_DE_CONTRATACION = (
	SELECT MAX(fecha_de_contratacion)
	FROM empleados) AND FECHA_DE_CONTRATACION = (
	SELECT MAX(fecha_de_contratacion)
	FROM empleados)
ORDER BY NOMBRES;

#10.Consultar todos los empleados que estén entre 17 años y 25 años
SELECT *
FROM EMPLEADOS
WHERE EDAD BETWEEN '17' AND '25';

#11.Queremos saber el promedio de edad de los empleados de la empresa
SELECT avg(edad)
FROM EMPLEADOS;

#12. necesitamos sumar todos los sueldos de los empleados
SELECT SUM(SUELDO)
FROM EMPLEADOS;

#13.Queremos saber el nombre, sede, estrato, fecha de contratación y el nombre del cargo del empleado que más gana en la empresa.
SELECT	NOMBRES, SEDE, ESTRATO, FECHA_DE_CONTRATACION, CARGO
FROM   EMPLEADOS
WHERE SUELDO = (
	SELECT MAX(sueldo)
	FROM empleados);

#14. Queremos saber el nombre del médico más joven que haya en la sede SUR
SELECT NOMBRES
FROM EMPLEADOS
WHERE EDAD = (
    SELECT MIN(edad_) FROM empleados) AND CARGO = 'MEDICO' AND SEDE = 'SUR';
