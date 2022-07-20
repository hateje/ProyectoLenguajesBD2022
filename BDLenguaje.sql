CREATE TABLE USUARIO(
usuarioID NUMBER, 
primerNombre VARCHAR2(30) NOT NULL,
segundoNombre VARCHAR2(30) NOT NULL,
primerApellido VARCHAR2(30) NOT NULL,
segundoApellido VARCHAR2(30) NOT NULL,
email VARCHAR2(50 BYTE) NOT NULL,
contrasena VARCHAR2(30) NOT NULL,
telefon VARCHAR2(30) NOT NULL,
CONSTRAINT usuario_pk
PRIMARY KEY (usuarioID)
); 

CREATE TABLE CAPITAN(
capitanID NUMBER, 
numLicencia NUMBER, 
fechaContratacion DATE, 
usuario_ID NUMBER, 
CONSTRAINT capitan_pk
PRIMARY KEY (capitanID),
CONSTRAINT empleado_fk FOREIGN KEY (usuario_ID) REFERENCES USUARIO (usuarioID)
); 

CREATE TABLE ALQUILER(
alquilerID NUMBER, 
usuario_ID NUMBER,
CONSTRAINT alquiler_pk
PRIMARY KEY (alquilerID),
FOREIGN KEY (usuario_ID) REFERENCES USUARIO (usuarioID)
); 

CREATE TABLE FACTURA(
facturaID NUMBER, 
montoTotal NUMBER, 
usuario_ID NUMBER,
alquiler_ID NUMBER, 
CONSTRAINT factura_pk
PRIMARY KEY (facturaID),
 FOREIGN KEY (usuario_ID) REFERENCES USUARIO (usuarioID),
 FOREIGN KEY (alquiler_ID) REFERENCES ALQUILER (alquilerID)
); 

CREATE TABLE VEHICULO(
vehiculoID NUMBER,
CONSTRAINT vehiculo_pk
PRIMARY KEY (vehiculoID)
);  

CREATE TABLE detalleFactura(
detalleFacturaID NUMBER, 
linea NUMBER, 
montoUnitario NUMBER, 
vehiculo_ID NUMBER,
factura_ID NUMBER, 
CONSTRAINT detalleFact_pk
PRIMARY KEY (detalleFacturaID),
 FOREIGN KEY (vehiculo_ID) REFERENCES VEHICULO (vehiculoID),
 FOREIGN KEY (factura_ID) REFERENCES FACTURA (facturaID)
); 

CREATE TABLE detalleAlquiler(
detalleAlquilerID NUMBER,
fechaAlquiler Date,
horaIniciaAlqui TIMESTAMP,
horaFinalAlqui TIMESTAMP, 
alquiler_ID NUMBER,
vehiculo_ID NUMBER,
CONSTRAINT detalleAlqui_pk
PRIMARY KEY (detalleAlquilerID),
 FOREIGN KEY (vehiculo_ID) REFERENCES VEHICULO (vehiculoID),
 FOREIGN KEY (alquiler_ID) REFERENCES ALQUILER (alquilerID)
); 

CREATE TABLE JETSKI(
jetSkiID NUMBER, 
descripcion VARCHAR (200),
cantidadOcupadas NUMBER,
precioAlquiler NUMBER,
vehiculo_ID NUMBER, 
CONSTRAINT jetski_pk
PRIMARY KEY (jetSkiID),
 FOREIGN KEY (vehiculo_ID) REFERENCES VEHICULO (vehiculoID)
);

CREATE TABLE BOTEPESCA(
boteID NUMBER, 
descripcion VARCHAR (200),
cantidadOcupadas NUMBER,
precioAlquiler NUMBER,
capitan_ID NUMBER, 
vehiculo_ID NUMBER,
CONSTRAINT boteP_pk
PRIMARY KEY (boteID),
 FOREIGN KEY (vehiculo_ID) REFERENCES VEHICULO (vehiculoID),
 FOREIGN KEY (capitan_ID) REFERENCES CAPITAN (capitanID)
); 






