USE pizzeria;

INSERT INTO localidades (id_ciudad, codigo_postal, ciudad, provincia) VALUES
(null, 2900, 'San Nicolas', 'Buenos Aires');

INSERT INTO prepizza (id_prepizza, tipo_prepizza) VALUES
(null, 'Redonda'),
(null, 'Cuadrada');

INSERT INTO variedades (id_variedad, nombre_variedad, descrpcion) VALUES
(null, 'Rucula', 'Jamon crudo, tomates, muzzarella, queso parmesano, aceitunas negras, oregano.'),
(null, 'Acelga', 'Acelga, muzzarella, salsa blanca, aceitunas, oregano.');

INSERT INTO pizza (id_pizza, id_variedad, id_prepizza) VALUES
(null, 1, 1),
(null, 1, 2),
(null, 2, 1),
(null, 2, 2);

INSERT INTO pizzeria (id_pizzeria, id_ciudad, direccion, telefono, mail) VALUES
(null, 1, 'Avenida Falcon 35', '33612345678', 'lacuadrada77@muzzarella.com'),
(null, 1, 'Avenida Alberdi 57', '3369874563', 'lacuadrada70@muzzarella.com');

INSERT INTO proveedores (id_proveedor, id_pizzeria, nombre, direccion, telefono, mail) VALUES
(null, 1, 'Paladini', 'Presidente Peron 1556', '33645558985', 'paladini@fiambres.com'),
(null, 1, 'La Serenisima', 'Mitre 556', '3369874563', 'laserenisima@quesos.com'),
(null, 1, 'El Molino', 'Mitre 896', '336987820063', 'laserenisima@quesos.com'),
(null, 1, 'El Cartoncito', 'Nacion 96', '3369877763', 'elcarton@gmail.com');

INSERT INTO insumos (id_insumo, id_proveedor, nombre, cantidad) VALUES
(null, 4, 'Caja', 500),
(null, 4, 'Vasos', 100),
(null, 4, 'Servilletas', 200);

INSERT INTO ingredientes (id_ingrediente, id_proveedor, nombre, cantidad, descripcion) VALUES
(null, 1, 'Jamón', 100, 'Packs de 100g de fetas de Jamón'),
(null, 1, 'Saláme', 50, 'Packs de 100g de fetas de Saláme'),
(null, 1, 'Mortadela', 30, 'Embutido de 100g de fetas de Mortadela'),
(null, 2, 'Muzzarella', 100, 'Embutido de 300g de muzzarella'),
(null, 2, 'Roquefort', 50, '500g trozo de Roquefort'),
(null, 2, 'Parmesano', 50, '500g trozo de Parmesano' ),
(null, 3, 'Harina', 80, 'Bolsa de 25k de harina'),
(null, 3, 'Levadura', 10, 'Pack 100g de levadura'),
(null, 3, 'Harina integral', 10, 'Bolsa de 25k de harina');

INSERT INTO precios (id_precio, id_ingrediente, id_insumo, id_proveedor, precio) VALUES
(null, 1, null, 1, 250),
(null, 2, null, 1, 300),
(null, 3, null, 1, 200),
(null, 4, null, 2, 400),
(null, 5, null, 2, 350),
(null, 6, null, 2, 300),
(null, 7, null, 3, 1000),
(null, 8, null, 3, 450),
(null, 9, null, 3, 1500),
(null, null, 1, 4, 50),
(null, null, 2, 4, 100),
(null, null, 3, 4, 20);

INSERT INTO usuario (id_usuario, nombre, direccion, telefono) VALUES
(null, 'Lautaro Pistiner', 'Pte Peron 1254', '3365558998'),
(null, 'Angela Pistiner', 'Pte Peron 1254', '5521212'),
(null, 'Cristian Rosales', 'Pte Peron 54', '6663665'),
(null, 'Juan Cruz Pinto', 'Mitre 55', '669966'),
(null, 'Marcos Aguer', 'Pelegrini 88', '562369'),
(null, 'Tomas Cordisco', 'Pte Peron 1300', '336555668'),
(null, 'Gaston Galarza', 'Falcon 88', '336886335');

INSERT INTO empleado (id_empleado, nombre, direccion, telefono, fecha_ingreso) VALUES
(null, 'Juan Guitarra', 'Pte Peron 455', '4443666', '2010-03-14'),
(null, 'Pablo Guitarra', 'Pte Peron 455', '55421212', '2010-03-14'),
(null, 'Cristian guitarra', 'Alberdi 55', '661163665', '2010-03-14');

INSERT INTO vehiculo (id_vehiculo, id_propietario, modelo, seguro_activo) VALUES
(null, 1, 'Zanella hj 125', TRUE),
(null, 2, 'Honda CJ 150', TRUE);

INSERT INTO delivery (id_delivery, id_empleado, id_vehiculo) VALUES
(null, 1, 1),
(null, 2, 2);

INSERT INTO pedidos (id_pedido, id_usuario, id_delivery, fecha_hora) VALUES
(null, 1, 1, '2022-12-20'),
(null, 3, 1, '2022-12-20'),
(null, 4, 1, '2022-12-20'),
(null, 5, 1, '2022-12-20'),
(null, 6, 1, '2022-12-20'),
(null, 2, 1, '2022-12-20'),
(null, 7, 1, '2022-12-20');


