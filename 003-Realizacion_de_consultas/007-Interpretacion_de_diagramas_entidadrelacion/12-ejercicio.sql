CREATE DATABASE tiendaonline;
USE tiendaonline;

CREATE TABLE cliente(
    id int PRIMARY KEY AUTO_INCREMENTAL;
    nombre VARCHAR(200),
    apellidos VARCHAR(200),
    email VARCHAR(255),
    dennie VARCHAR(15)
);

CREATE TABLE pedido(
    id int PRIMARY KEY AUTO_INCREMENTAL;
    id_cliente int
);

CREATE TABLE pedido_online(
    id int PRIMARY KEY AUTO_INCREMENTAL;
    id_pedido int,
    id_producto
);

CREATE TABLE producto(
    id int PRIMARY KEY AUTO_INCREMENTAL;
    nombre VARCHAR(200)
);