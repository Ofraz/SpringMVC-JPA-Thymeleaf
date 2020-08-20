INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Aide', 'Mil' ,'aidemil@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Luis', 'Garcia', '2ail@mail.com', '2020-07-12', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Mario', 'Robles' ,'3mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Ana', 'Ramos' ,'4mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Karen', 'Martinez' ,'5mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Leslie', 'Garcia' ,'6mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Brandon', 'Pacheco' ,'7mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Antonio' ,'Diaz' , '8mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Erika', 'Mil' ,'9mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Sofia', 'Gonzalez' ,'10mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Eduardo', 'Gomez' ,'11mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Jeremy', 'Martínez' ,'12mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Natalia', 'Leon' ,'13mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Cristian', 'Martínez' ,'14mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Eliezer', 'Hernandez' ,'15mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Jaqueline', 'Rodriguez' ,'16mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Gabriela', 'Ponce' ,'17mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Moisés', 'Córdoba' ,'18mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Erick', 'Correa' ,'19mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Selena', 'Gómez' ,'20mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Enrique', 'Gómez' ,'21mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Esmeralda', 'Flores' ,'22mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Ruben', 'Picasso' ,'23mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Michelle', 'López' ,'24mail@mail.com', '2020-10-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES ('Romina', 'Ortega' ,'25mail@mail.com', '2020-10-02', '');

/* Tabla Productios*/
INSERT INTO productos (nombre, precio, create_at) VALUES ('Samsung pantalla LCD', 18000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Redmi Note 8', 4300, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('HP Multifuncional 5200', 5600, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Mi box S', 1400, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Kingston SSD 240', 459, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Set destornilladores panasonic', 989, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Cristal templado H10', 50, NOW());

/*Creacion de algunas facturas*/
INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES ('Factura compra X', null, 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1, 1, 2);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1, 1, 3);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1, 1, 4);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (6, 1, 7);

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES ('Factura television', 'Caja golpeada', 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (2, 2, 1);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (6, 2, 7);
