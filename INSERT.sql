INSERT INTO usuario  VALUES (1, 'Alejandro', 'Antonio','Solis','Varquero', 'alejandrosoli@gmail.com', '123', '123456');
INSERT INTO usuario  VALUES (2, 'Juan', 'Carlos','Alvarado','Vasquez', 'jucaralva@gmail.com', '321', '789456');
INSERT INTO usuario  VALUES (3, 'Jean', 'Paul','Hernandez','Velluti', 'jeanvellu@gmail.com', '456', '456123');
INSERT INTO usuario  VALUES (4, 'Jessica', 'Margaret','Murillo','Rocha', 'jessro@gmail.com', '789', '123456');
INSERT INTO usuario  VALUES (5, 'Ilani', 'Daniela','Rocha','Arguello', 'ilada@gmail.com', '987', '123456');
INSERT INTO usuario  VALUES (6, 'Jimena', 'Arvencha','Estrada','Lopez', 'jimeestrada@gmail.com', '654', '69871');
INSERT INTO usuario  VALUES (7, 'Cristiano', 'Ronaldo','Dos Santos','Aveiro', 'cr7@gmail.com', '147', '123456');
INSERT INTO usuario  VALUES (8, 'Lionel', 'Andres','Messi','Cuccittini', 'liomessi@gmail.com', '258', '65789');
INSERT INTO usuario  VALUES (9, 'Jose', 'Luis','Hernandez','Luna', 'joseLuna@gmail.com', '369', '42581');
INSERT INTO usuario  VALUES (10, 'Luis', 'Agustin','Navarro','Murillo', 'luisnava@gmail.com', '963', '32596');
INSERT INTO usuario  VALUES (11, 'Randy', 'Antonio','Perez','Brenes', 'randybre@gmail.com', '852', '75841');
INSERT INTO usuario  VALUES (12, 'Jose', 'David','Lopez','Varquero', 'macho@gmail.com', '741', '39856');
--Vehiculo
INSERT INTO vehiculo  VALUES (1);
INSERT INTO vehiculo  VALUES (2);
INSERT INTO vehiculo  VALUES (3);
INSERT INTO vehiculo  VALUES (4);


--JETSKI
INSERT INTO JETSKI  VALUES (1, 'kawassaki 2013',3,20000, 2);
INSERT INTO JETSKI  VALUES (2, 'kawassaki 2020',2,30000, 3);
INSERT INTO JETSKI  VALUES (3, 'SEA-DOO-RXT 2017',1,50000, 1);

--alquiler
INSERT INTO ALQUILER  VALUES (1, 6);
INSERT INTO ALQUILER  VALUES (2, 7);
INSERT INTO ALQUILER  VALUES (3, 8);

--factura
INSERT INTO FACTURA  VALUES (1, 50000, 1,2);
INSERT INTO FACTURA  VALUES (2, 80000, 2,2);
INSERT INTO FACTURA  VALUES (3, 60000, 3,3);

--muestra Usuarios
SELECT * FROM usuario; 

--muestra jetskies
SELECT jetskiid as ID,descripcion, cantidadocupadas as "Cantidad Ocupadas", precioalquiler as "Precio Alquiler", vehiculo_id as "Vehiculo ID" FROM jetski; 

--muestra  vehiuclo 
SELECT * FROM vehiculo; 

--muestra  factura 
SELECT facturaid as ID,montototal as "Monto Total", usuario_id as "Usuario", alquiler_id as "Alquiler ID" FROM factura; 

