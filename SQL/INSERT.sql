--************************
--* Inserts para Capitan *
--************************
INSERT INTO capitan (numlicencia,fechacontratacion)  VALUES (1111, TO_DATE('05/03/2003', 'mm/dd/yyyy'));
INSERT INTO capitan (numlicencia,fechacontratacion)  VALUES (2222, TO_DATE('06/14/1997', 'mm/dd/yyyy'));
INSERT INTO capitan (numlicencia,fechacontratacion)  VALUES (3333, TO_DATE('06/25/1991', 'mm/dd/yyyy'));
INSERT INTO capitan (numlicencia,fechacontratacion)  VALUES (4444, TO_DATE('07/30/1992', 'mm/dd/yyyy'));

--************************
--* Inserts para Usuario *
--************************
INSERT INTO usuario (primernombre, primerapellido, segundoapellido, email, contrasena, telefono) 
VALUES ('Juan', 'Alvarado','Vasquez', 'jucaralva@gmail.com', '321', '789456');

INSERT INTO usuario (primernombre, primerapellido, segundoapellido, email, contrasena, telefono) 
VALUES ('Jean', 'Hernandez','Velluti', 'jeanvellu@gmail.com', '456', '456123');

INSERT INTO usuario (primernombre, primerapellido, segundoapellido, email, contrasena, telefono) 
VALUES ('Jessica', 'Murillo','Rocha', 'jessro@gmail.com', '789', '123456');

INSERT INTO usuario (primernombre, primerapellido, segundoapellido, email, contrasena, telefono)
VALUES ('Ilani', 'Rocha','Arguello', 'ilada@gmail.com', '987', '123456');

INSERT INTO usuario (primernombre, primerapellido, segundoapellido, email, contrasena, telefono) 
VALUES ('Jimena', 'Estrada','Lopez', 'jimeestrada@gmail.com', '654', '69871');

INSERT INTO usuario (primernombre, primerapellido, segundoapellido, email, contrasena, telefono, capitanid) 
VALUES ('Cristiano', 'Dos Santos','Aveiro', 'cr7siuuuuu@gmail.com', '147', '123456', 2);

INSERT INTO usuario (primernombre, primerapellido, segundoapellido, email, contrasena, telefono, capitanid) 
VALUES ('Lionel', 'Messi','Cuccittini', 'liomessi@gmail.com', '258', '65789', 1);

INSERT INTO usuario (primernombre, primerapellido, segundoapellido, email, contrasena, telefono) 
VALUES ('Jose', 'Hernandez','Luna', 'joseLuna@gmail.com', '369', '42581');

INSERT INTO usuario (primernombre, primerapellido, segundoapellido, email, contrasena, telefono) 
VALUES ('Luis', 'Navarro','Murillo', 'luisnava@gmail.com', '963', '32596');

INSERT INTO usuario (primernombre, primerapellido, segundoapellido, email, contrasena, telefono) 
VALUES ('Randy', 'Perez','Brenes', 'randybre@gmail.com', '852', '75841');

INSERT INTO usuario (primernombre, primerapellido, segundoapellido, email, contrasena, telefono) 
VALUES ('Jose', 'Lopez','Varquero', 'jlopez@gmail.com', '741', '39856');

--******************************
--* Inserts para Tipo_Vehiculo *
--******************************
INSERT INTO tipo_vehiculo(tipo)  VALUES ('Bote');
INSERT INTO tipo_vehiculo(tipo)  VALUES ('Jetski');

--*************************
--* Inserts para Vehiculo *
--*************************
INSERT INTO vehiculo(placa, descripcion, cantidadocupantes, precioalquiler, tipovehiculoid) 
VALUES ('BCD-235', 'kawassaki 2013',2,20000, 2);

INSERT INTO vehiculo(placa, descripcion, cantidadocupantes, precioalquiler, tipovehiculoid)  
VALUES ('ARG-264', 'kawassaki 2020',2,30000, 2);

INSERT INTO vehiculo(placa, descripcion, cantidadocupantes, precioalquiler, tipovehiculoid)
VALUES ('TYK-754', 'SEA-DOO-RXT 2017',1,50000, 1);

INSERT INTO vehiculo(placa, descripcion, cantidadocupantes, precioalquiler, tipovehiculoid)
VALUES ('ZTY-886', 'SEA-DRW-MWA 2020',1,55000, 1);


--*************************
--* Inserts para Alquiler *
--*************************

INSERT INTO alquiler (fechaalquiler, horainiciaalqui, horafinalalqui, usuario_id, placa) 
VALUES (TO_DATE('07/17/2022', 'mm/dd/yyyy'), '06:14', '18:17', 4,'BCD-235');

INSERT INTO ALQUILER (fechaalquiler, horainiciaalqui, horafinalalqui, usuario_id, placa) 
VALUES (TO_DATE('08/18/2022', 'mm/dd/yyyy'), '08:07', '17:00', 7,'TYK-754');

--********************************
--* Inserts para Factura *
--********************************
INSERT INTO factura (fechafactura, montototal) 
VALUES (TO_DATE('07/17/2022', 'mm/dd/yyyy'), 20000);

INSERT INTO factura (fechafactura, montototal) 
VALUES (TO_DATE('08/18/2022', 'mm/dd/yyyy'), 50000);

--********************************
--* Inserts para Detalle Factura *
--********************************

INSERT INTO detallefactura (alquilerid, facturaid) 
VALUES (1,1);

INSERT INTO detallefactura (alquilerid, facturaid)  
VALUES (2,2);
