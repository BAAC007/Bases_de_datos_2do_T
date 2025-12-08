--Iniciamos.
sudo mysql -u root -p

--Usamos la base de datos personas y seleccionamos clientes.
USE personas;

SELECT 
* 
FROM clientes;

+----+---------+------------------+------+
| id | nombre  | apellidos        | edad |
+----+---------+------------------+------+
|  1 | Juan    | Pérez López      |   22 |
|  2 | María   | García Ruiz      |   19 |
|  3 | Carlos  | Sánchez Martín   |   25 |
|  4 | Lucía   | Fernández Díaz   |   20 |
|  5 | Pedro   | Ramírez Soto     |   23 |
|  6 | Laura   | Hernández Ramos  |   21 |
|  7 | Ana     | Torres Castillo  |   24 |
|  8 | Javier  | Vargas Molina    |   25 |
|  9 | Sofía   | Romero Ponce     |   18 |
| 10 | Diego   | Cortés Navarro   |   20 |
| 11 | Elena   | Santos León      |   22 |
| 12 | Miguel  | Rojas Gil        |   24 |
| 13 | Paula   | Cano Vega        |   17 |
| 14 | Hugo    | Delgado Lara     |   19 |
| 15 | Isabel  | Nieto Bravo      |   23 |
| 16 | Ricardo | Campos Peña      |   25 |
| 17 | Carmen  | Reyes Solís      |   21 |
| 18 | Adrián  | Ibarra Lozano    |   18 |
| 19 | Valeria | Mendoza Tapia    |   20 |
| 20 | Gabriel | Silva Aguirre    |   24 |
+----+---------+------------------+------+


--Resumimos con contoneo la cantidad de nombres
SELECT 
COUNT(nombre)
FROM clientes;

+---------------+
| COUNT(nombre) |
+---------------+
|            20 |
+---------------+

--Ahora mostramos la edad minima.
SELECT
MIN(edad)
FROM clientes;

+-----------+
| MIN(edad) |
+-----------+
|        17 |
+-----------+

--Indentificamos al cliente más joven.
SELECT
    nombre,
    apellidos,
    edad
FROM
    clientes
ORDER BY
    edad ASC
LIMIT 1;

+--------+-----------+------+
| nombre | apellidos | edad |
+--------+-----------+------+
| Paula  | Cano Vega |   17 |
+--------+-----------+------+

--Ahora identificamos al cliente más viejo.

SELECT
    nombre,
    apellidos,
    edad
FROM
    clientes
ORDER BY
    edad DESC
LIMIT 1;

+--------+------------------+------+
| nombre | apellidos        | edad |
+--------+------------------+------+
| Carlos | Sánchez Martín   |   25 |
+--------+------------------+------+

--Utilizamos una función para el promedio

SELECT
    AVG(edad)
FROM
    clientes;

+-----------+
| AVG(edad) |
+-----------+
|   21.5000 |
+-----------+

--Ahora realizamos los redondeos.
SELECT 
    ROUND(AVG(edad))
FROM
    clientes;

+------------------+
| ROUND(AVG(edad)) |
+------------------+
|               22 |
+------------------+
1 row in set (0.003 sec)

SELECT
    FLOOR(AVG(edad))
FROM
    clientes;

+------------------+
| FLOOR(AVG(edad)) |
+------------------+
|               21 |
+------------------+
1 row in set (0.003 sec)

SELECT
    CEIL(AVG(edad))
FROM
    clientes;

+-----------------+
| CEIL(AVG(edad)) |
+-----------------+
|              22 |
+-----------------+
1 row in set (0.000 sec)

--Creamos un usuario y le añadimos privilegios para poder conectar con python

CREATE USER 'bryan'@'localhost' IDENTIFIED BY 'Clientes123$';

GRANT USAGE ON *.* TO 'bryan'@'localhost';

ALTER USER 'bryan'@'localhost'
REQUIRE NONE
WITH MAX_QUERIES_PER_HOUR 0
MAX_CONNECTIONS_PER_HOUR 0
MAX_UPDATES_PER_HOUR 0
MAX_USER_CONNECTIONS 0;

GRANT ALL PRIVILEGES ON personas.* TO 'bryan'@'localhost';

FLUSH PRIVILEGES;

SHOW GRANTS FOR 'bryan'@'localhost';

+--------------------------------------------------------------------------------------------------------------+
| Grants for bryan@localhost                                                                                   |
+--------------------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO `bryan`@`localhost` IDENTIFIED BY PASSWORD '*2C250114B7B7357BE6A0DAB0598B15DC24006DDA' |
| GRANT ALL PRIVILEGES ON `personas`.* TO `bryan`@`localhost`                                                  |
+--------------------------------------------------------------------------------------------------------------+
2 rows in set (0.004 sec)
