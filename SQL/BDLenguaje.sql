CREATE TABLE CAPITAN(
capitanID NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY, 
numLicencia NUMBER, 
fechaContratacion DATE, 
CONSTRAINT capitan_pk
PRIMARY KEY (capitanID)
); 

CREATE TABLE USUARIO(
usuarioID NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY, 
primerNombre VARCHAR2(30) NOT NULL,
primerApellido VARCHAR2(30) NOT NULL,
segundoApellido VARCHAR2(30) NOT NULL,
email VARCHAR2(50 BYTE) NOT NULL,
contrasena VARCHAR2(30) NOT NULL,
telefono VARCHAR2(30) NOT NULL,
capitanID NUMBER,
CONSTRAINT usuario_pk
PRIMARY KEY (usuarioID),
CONSTRAINT capitan_fk 
FOREIGN KEY (capitanID) REFERENCES CAPITAN (capitanID)
); 

CREATE TABLE TIPO_VEHICULO(
tipoVehiculoID NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
tipo VARCHAR2(30) NOT NULL,
CONSTRAINT tipo_vehiculo_pk
PRIMARY KEY (tipoVehiculoID)
); 

CREATE TABLE VEHICULO(
placa varchar2(50),
descripcion varchar2(200),
cantidadOcupantes NUMBER,
precioAlquiler NUMBER,
tipoVehiculoID NUMBER,
CONSTRAINT placa_pk
PRIMARY KEY (placa),
CONSTRAINT tipo_vehiculo_fk 
FOREIGN KEY (tipoVehiculoID) REFERENCES TIPO_VEHICULO (tipoVehiculoID)
);  

CREATE TABLE ALQUILER(
alquilerID NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY, 
fechaAlquiler Date,
horaIniciaAlqui VARCHAR2(10),
horaFinalAlqui VARCHAR2(10), 
usuario_ID NUMBER,
placa varchar2(50),
CONSTRAINT alquiler_pk
PRIMARY KEY (alquilerID),
CONSTRAINT placa_fk 
FOREIGN KEY (placa) REFERENCES VEHICULO (placa)
); 

CREATE TABLE FACTURA(
facturaID NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY, 
fechaFactura DATE,
montoTotal NUMBER, 
CONSTRAINT factura_pk
PRIMARY KEY (facturaID)
); 

CREATE TABLE detalleFactura(
detalleFacturaID NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY, 
alquilerID NUMBER,
facturaID NUMBER, 
CONSTRAINT detalleFact_pk
PRIMARY KEY (detalleFacturaID),
CONSTRAINT alquilerID_fk
FOREIGN KEY (alquilerID) REFERENCES ALQUILER (alquilerID),
constraint facturaID_fk
FOREIGN KEY (facturaID) REFERENCES FACTURA (facturaID)
);