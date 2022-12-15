CREATE SCHEMA pizzeria;
USE pizzeria;

CREATE TABLE proveedores(
	id_proveedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    id_pizzeria INT NOT NULL,
    nombre CHAR(20) NOT NULL,
    direccion VARCHAR(30) NOT NULL,
    telefono CHAR(15) NOT NULL,
    mail CHAR(30)
);

CREATE TABLE pizzeria(
	id_pizzeria INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    id_ciudad INT NOT NULL,
    direccion VARCHAR(30) NOT NULL,
    telefono CHAR(15) NOT NULL,
    mail CHAR(30)
);

ALTER TABLE proveedores ADD FOREIGN KEY (id_pizzeria) REFERENCES pizzeria(id_pizzeria);

CREATE TABLE localidades(
	id_ciudad INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    codigo_postal VARCHAR(10) NOT NULL,
    ciudad CHAR(30) NOT NULL,
    provincia CHAR(30) NOT NULL
);

ALTER TABLE pizzeria ADD FOREIGN KEY (id_ciudad) REFERENCES localidades(id_ciudad);

CREATE TABLE insumos(
	id_insumo INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    id_proveedor INT NOT NULL,
    nombre CHAR(20) NOT NULL,
    cantidad INT NOT NULL,
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
);

CREATE TABLE ingredientes(
	id_ingrediente INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    id_proveedor INT NOT NULL,
    nombre CHAR(20) NOT NULL,
    cantidad INT NOT NULL,
    descripcion CHAR(50),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
);

CREATE TABLE prepizza(
	id_prepizza INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    tipo_prepizza CHAR(20) NOT NULL
);

CREATE TABLE variedades(
	id_variedad INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    nombre_variedad CHAR(20) NOT NULL,
    descrpcion CHAR(20) NOT NULL
);

CREATE TABLE pizza(
	id_pizza INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    id_variedad INT NOT NULL,
	id_prepizza INT NOT NULL,
	FOREIGN KEY (id_variedad) REFERENCES variedades(id_variedad),
	FOREIGN KEY (id_prepizza) REFERENCES prepizza(id_prepizza)
);

CREATE TABLE precios(
	id_precio INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    id_ingrediente INT NOT NULL,
	id_insumo INT NOT NULL,
    id_proveedor INT NOT NULL,
    precio DECIMAL NOT NULL,
    FOREIGN KEY (id_ingrediente) REFERENCES ingredientes(id_ingrediente),
	FOREIGN KEY (id_insumo) REFERENCES insumos(id_insumo),
	FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
);

CREATE TABLE usuario(
	id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    nombre CHAR(20) NOT NULL,
    direccion VARCHAR(30) NOT NULL,
    telefono CHAR(15) NOT NULL
);

CREATE TABLE pedidos(
	id_pedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    id_usuario INT NOT NULL,
	id_delivery INT NOT NULL,
    fecha_hora DATETIME NOT NULL,
	FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE delivery(
	id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    id_empleado INT NOT NULL,
	id_vehiculo INT NOT NULL
);

ALTER TABLE pedidos ADD FOREIGN KEY (id_delivery) REFERENCES delivery(id_delivery);

CREATE TABLE empleado(
	id_empleado INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    nombre CHAR(20) NOT NULL,
    direccion VARCHAR(30) NOT NULL,
    telefono CHAR(15) NOT NULL,
    fecha_ingreso DATE NOT NULL
);
ALTER TABLE delivery ADD FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado);

CREATE TABLE vehiculo(
	id_vehiculo INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    id_propietario INT NOT NULL,
	modelo VARCHAR(30) NOT NULL,
    seguro_activo BOOLEAN NOT NULL,
	FOREIGN KEY (id_propietario) REFERENCES empleado(id_empleado)
);

ALTER TABLE delivery ADD FOREIGN KEY (id_vehiculo) REFERENCES vehiculo(id_vehiculo);









