--sudo mysql -u root -p

--Creamos la base de datos 'tiendaonline'.
CREATE DATABASE tiendaonline;

--Usamos la base de datos recien creada.
USE tiendaonline;

--Ahora añadimos las tablas clientes, pedido, lineapedido y producto.
--Y le insertamos datos ficticios.
CREATE TABLE cliente (
  id INT PRIMARY KEY,
  nombre VARCHAR(255),
  apellidos VARCHAR(255),
  email VARCHAR(255)
);

INSERT INTO cliente (id, nombre, apellidos, email) VALUES
(1, 'Ana', 'López García', 'ana.lopez@email.com'),
(2, 'Carlos', 'Mendoza Ruiz', 'carlos.mendoza@email.com'),
(3, 'Sofía', 'Jiménez Torres', 'sofia.jimenez@email.com'),
(4, 'Luis', 'Ortega Pérez', 'luis.ortega@email.com');

CREATE TABLE pedido (
  id INT PRIMARY KEY,
  fecha VARCHAR(255),
  cliente_id INT,
  CONSTRAINT fk_pedido_1 FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);

INSERT INTO pedido (id, fecha, cliente_id) VALUES
(1001, '2026-01-02', 1),  -- Ana
(1002, '2026-01-03', 2),  -- Carlos
(1003, '2026-01-03', 3),  -- Sofía
(1004, '2026-01-04', 1);  -- Ana otra vez

CREATE TABLE lineapedido (
  id INT PRIMARY KEY,
  pedido_id INT,
  producto_id INT,
  CONSTRAINT fk_lineapedido_1 FOREIGN KEY (pedido_id) REFERENCES pedido(id),
  CONSTRAINT fk_lineapedido_2 FOREIGN KEY (producto_id) REFERENCES producto(id)
);

INSERT INTO lineapedido (id, pedido_id, producto_id) VALUES
(2001, 1001, 101),  -- Pedido 1001: Laptop
(2002, 1001, 102),  -- Pedido 1001: Mouse
(2003, 1002, 103),  -- Pedido 1002: Teclado
(2004, 1003, 104),  -- Pedido 1003: Monitor
(2005, 1003, 105),  -- Pedido 1003: SSD
(2006, 1004, 102),  -- Pedido 1004: Mouse (Ana de nuevo)
(2007, 1004, 103);  -- Pedido 1004: Teclado

CREATE TABLE producto (
  id INT PRIMARY KEY,
  nombre VARCHAR(255),
  precio VARCHAR(255)
);

INSERT INTO producto (id, nombre, precio) VALUES
(101, 'Laptop Dell Inspiron', '450.00'),
(102, 'Mouse inalámbrico', '15.99'),
(103, 'Teclado mecánico', '89.50'),
(104, 'Monitor 24 pulgadas', '199.99'),
(105, 'Disco SSD 1TB', '75.00');

