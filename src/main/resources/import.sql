/* Populate tables */
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(1, 'Melanie', 'Agualimpia', '3100melanie@gmail.com', '2020-02-01', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(2, 'Nancy', 'Agualimpia', 'nancy@gmail.com', '2020-02-02', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(3, 'Dayana', 'Moreno', 'dayana@gmail.com', '2020-02-03', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(4, 'Odilia', 'Mosquera', 'odi@gmail.com', '2020-02-04', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(5, 'Mery', 'Agualimpia', 'mery@gmail.com', '2020-02-05', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(6, 'Marlen', 'Agualimpia', 'marlen@gmail.com', '2020-02-06', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(7, 'Julian', 'Garces', 'julian@gmail.com', '2020-02-07', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(8, 'Laura', 'Santos', 'laura@gmail.com', '2020-02-08', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(9, 'Karen', 'Alvarez', 'karen@gmail.com', '2020-02-09', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(10, 'Fernando', 'Usuga', 'fernando@gmail.com', '2020-02-10', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(11, 'Esteban', 'Flores', 'esteban@gmail.com', '2020-02-11', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(12, 'Valeria', 'Atehortua', 'valeria@gmail.com', '2020-02-12', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(13, 'Vanessa', 'Diaz', 'vanessa@gmail.com', '2020-02-13', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(14, 'Alain', 'Sanchez', 'alain@gmail.com', '2020-02-14', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(15, 'Ana', 'Osorio', 'ana@gmail.com', '2020-02-15', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(16, 'Valentina', 'Toro', 'toro@gmail.com', '2020-02-16', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(17, 'Camilo', 'Rivas', 'camilo@gmail.com', '2020-02-17', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(18, 'Steban', 'Ruiz', 'steban@gmail.com', '2020-02-18', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(19, 'Jessica', 'Bustamante', 'jessica@gmail.com', '2020-02-19', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(20, 'Jonathan', 'Puerta', 'erney@gmail.com', '2020-02-20', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(21, 'Alexis', 'Bedoya', 'alexis@gmail.com', '2020-02-21', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(22, 'Katherin', 'Velez', 'katherin@gmail.com', '2020-02-22', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(23, 'Joshua', 'Tejada', '3100melanie@gmail.com', '2020-02-23', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(24, 'Jose', 'Torrez', 'jose@gmail.com', '2020-02-24', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES(25, 'Alejandro', 'Taborda', 'alejandro@gmail.com', '2020-02-25', '');

/* Populate tabla productos */
INSERT INTO productos (nombre, precio, create_at) VALUES('Panasonic Pantalla LCD', 2240360, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Sony Camara digital DSC-W254D', 165400, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Apple iPod shuffle', 1460000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Sony Notebook Z110', 37999, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Hewlett Packard Multifuncional F2280', 699990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Bianchi Bicicleta Aro 26', 70599, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Mica Comoda 5 Cajones', 295640, NOW());

/* Creamos algunas facturas */
INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES('Factura equipos de oficina', null, 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1, 1, 1);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(2, 1, 4);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1, 1, 5);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1, 1, 7);

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES('Factura Bicicleta', 'Alguna nota importantisima', 1, NOW()); 
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(3, 2, 6);

/* Creamos algunos usuarios con sus roles*/
INSERT INTO `users` (username, password, enabled) VALUES('melanie', '$2a$10$x.Nu/7H.RQG94MsNFvS.EuPA7wiRZ8G2KusMWh0Owyh3Ye9y9MZGS', 1);
INSERT INTO `users` (username, password, enabled) VALUES('admin', '$2a$10$eMuuNJGWnxf/2LSguOQmX.ZdQeQBZhFVDYnJeKHcHIv1pnpsyYJFm', 1);

INSERT INTO `authorities` (user_id, authority) VALUES(1, 'ROLE_USER');
INSERT INTO `authorities` (user_id, authority) VALUES(2, 'ROLE_ADMIN');
INSERT INTO `authorities` (user_id, authority) VALUES(2, 'ROLE_USER');
