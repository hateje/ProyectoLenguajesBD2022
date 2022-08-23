/*------SE VACIAN TODAS LAS TABLAS------*/
truncate table detallefactura;
truncate table factura;
truncate table usuario;
truncate table capitan;
truncate table alquiler;
truncate table vehiculo;
truncate table tipo_vehiculo;




/*------SE MODIFICA LA TABLA ALQUILER PARA QUITAR FECHAALQULER Y HORAALQUILER, PARA SOLO DEJAR FECHAINICIO, FECHA FIN TIPO DATE AMBAS------*/
alter table alquiler
drop column fechaalquiler;

alter table alquiler
drop column horainiciaalqui;

alter table alquiler
drop column horafinalalqui;

ALTER TABLE ALQUILER
ADD FECHAINICIO DATE;

ALTER TABLE ALQUILER
ADD FECHAFIN DATE;


/*------SE MODIFICAN TODAS LAS TABLAS PARA QUE NO ------*/
ALTER TABLE ALQUILER
MODIFY ALQUILERID DROP IDENTITY;

ALTER TABLE CAPITAN
MODIFY CAPITANID DROP IDENTITY;

ALTER TABLE DETALLEFACTURA
MODIFY DETALLEFACTURAID DROP IDENTITY;

ALTER TABLE FACTURA
MODIFY FACTURAID DROP IDENTITY;

ALTER TABLE TIPO_VEHICULO
MODIFY TIPOVEHICULOID DROP IDENTITY;

ALTER TABLE USUARIO
MODIFY USUARIOID DROP IDENTITY;



/*------SE CREAN SECUENCIAS PARA QUE CADA PK INICIE EN 1 Y SIGA UN ORDEN DE ACUERDO CON SU RESPECTIVA SECUENCIA------*/
CREATE SEQUENCE ALQUILER_SEC
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 100
NOCYCLE;

CREATE SEQUENCE CAPITAN_SEC
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 100
NOCYCLE;

CREATE SEQUENCE DETALLEFACTURA_SEC
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 100
NOCYCLE;

CREATE SEQUENCE FACTURA_SEC
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 100
NOCYCLE;

CREATE SEQUENCE TIPO_VEHICULO_SEC
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 100
NOCYCLE;

CREATE SEQUENCE USUARIO_SEC
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 100
NOCYCLE;

CREATE SEQUENCE VEHICULO_SEC
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 100
NOCYCLE;

/*------SE MODIFICAN LOS INSERTS PARA QUE UTILICEN LAS SECUENCIAS EN SUS PKs------*/

--************************
--* Inserts para Capitan *
--************************
INSERT INTO capitan (capitanid, numlicencia, fechacontratacion)  VALUES (capitan_sec.nextval,1111, TO_DATE('05/03/2003 00:00:00', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO capitan (capitanid, numlicencia, fechacontratacion)  VALUES (capitan_sec.nextval,2222, TO_DATE('14/06/1997 00:00:00', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO capitan (capitanid, numlicencia, fechacontratacion)  VALUES (capitan_sec.nextval,3333, TO_DATE('25/06/1991 00:00:00', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO capitan (capitanid, numlicencia, fechacontratacion)  VALUES (capitan_sec.nextval,4444, TO_DATE('30/07/1992 00:00:00', 'DD/MM/YYYY HH24:MI:SS'));

--************************
--* Inserts para Usuario *
--************************
INSERT INTO usuario (usuarioid, primernombre, primerapellido, segundoapellido, email, contrasena, telefono) 
VALUES (usuario_sec.nextval,'Juan', 'Alvarado','Vasquez', 'jucaralva@gmail.com', '321', '789456');

INSERT INTO usuario (usuarioid, primernombre, primerapellido, segundoapellido, email, contrasena, telefono) 
VALUES (usuario_sec.nextval,'Jean', 'Hernandez','Velluti', 'jeanvellu@gmail.com', '456', '456123');

INSERT INTO usuario (usuarioid, primernombre, primerapellido, segundoapellido, email, contrasena, telefono) 
VALUES (usuario_sec.nextval,'Jessica', 'Murillo','Rocha', 'jessro@gmail.com', '789', '123456');

INSERT INTO usuario (usuarioid, primernombre, primerapellido, segundoapellido, email, contrasena, telefono)
VALUES (usuario_sec.nextval,'Ilani', 'Rocha','Arguello', 'ilada@gmail.com', '987', '123456');

INSERT INTO usuario (usuarioid, primernombre, primerapellido, segundoapellido, email, contrasena, telefono) 
VALUES (usuario_sec.nextval,'Jimena', 'Estrada','Lopez', 'jimeestrada@gmail.com', '654', '69871');

INSERT INTO usuario (usuarioid, primernombre, primerapellido, segundoapellido, email, contrasena, telefono, capitanid) 
VALUES (usuario_sec.nextval,'Cristiano', 'Dos Santos','Aveiro', 'cr7siuuuuu@gmail.com', '147', '123456', 2); /*ES CAPITAN*/

INSERT INTO usuario (usuarioid, primernombre, primerapellido, segundoapellido, email, contrasena, telefono, capitanid) 
VALUES (usuario_sec.nextval,'Lionel', 'Messi','Cuccittini', 'liomessi@gmail.com', '258', '65789', 1); /*ES CAPITAN*/

INSERT INTO usuario (usuarioid, primernombre, primerapellido, segundoapellido, email, contrasena, telefono) 
VALUES (usuario_sec.nextval,'Jose', 'Hernandez','Luna', 'joseLuna@gmail.com', '369', '42581');

INSERT INTO usuario (usuarioid, primernombre, primerapellido, segundoapellido, email, contrasena, telefono) 
VALUES (usuario_sec.nextval,'Luis', 'Navarro','Murillo', 'luisnava@gmail.com', '963', '32596');

INSERT INTO usuario (usuarioid, primernombre, primerapellido, segundoapellido, email, contrasena, telefono) 
VALUES (usuario_sec.nextval,'Randy', 'Perez','Brenes', 'randybre@gmail.com', '852', '75841');

INSERT INTO usuario (usuarioid, primernombre, primerapellido, segundoapellido, email, contrasena, telefono) 
VALUES (usuario_sec.nextval,'Jose', 'Lopez','Varquero', 'jlopez@gmail.com', '741', '39856');

--******************************
--* Inserts para Tipo_Vehiculo *
--******************************
INSERT INTO tipo_vehiculo(tipovehiculoid, tipo)  VALUES (tipo_vehiculo_sec.nextval, 'Bote');
INSERT INTO tipo_vehiculo(tipovehiculoid, tipo)  VALUES (tipo_vehiculo_sec.nextval, 'Jetski');

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



INSERT INTO alquiler(alquilerid,usuario_id,placa,fechainicio,fechafin)
values(alquiler_sec.nextval,4,'BCD-235', TO_DATE('17/07/2022 06:14:00', 'DD/MM/YYYY HH24:MI:SS'),TO_DATE('17/07/2022 18:17:00', 'DD/MM/YYYY HH24:MI:SS'));

INSERT INTO alquiler(alquilerid,usuario_id,placa,fechainicio,fechafin)
values(alquiler_sec.nextval,7,'TYK-754', TO_DATE('18/08/2022 08:07:00', 'DD/MM/YYYY HH24:MI:SS'),TO_DATE('17/07/2022 17:00:00', 'DD/MM/YYYY HH24:MI:SS'));


--********************************
--* Inserts para Factura *
--********************************


INSERT INTO factura (facturaid, fechafactura, montototal) 
VALUES (factura_sec.nextval,TO_DATE('17/07/2022 09:40:00', 'DD/MM/YYYY HH24:MI:SS'), 20000);

INSERT INTO factura (facturaid, fechafactura, montototal) 
VALUES (factura_sec.nextval,TO_DATE('18/08/2022 11:20:00', 'DD/MM/YYYY HH24:MI:SS'), 50000);



--********************************
--* Inserts para Detalle Factura *
--********************************

INSERT INTO detallefactura (detallefacturaid, alquilerid, facturaid) 
VALUES (detallefactura_sec.nextval,1,1);

INSERT INTO detallefactura (detallefacturaid, alquilerid, facturaid)  
VALUES (detallefactura_sec.nextval,2,2);




/*------SE MODIFICAN LOS SPs DE CONSULTAS, PARA QUE TENGAN SENTIDO CON LOS CAMBIOS ECHOS EN TABLAS------*/

--Obtener todos los DATOS LEGIBLES capitanes
Create or replace procedure getCapitanesLegibles (mi_cursor out SYS_REFCURSOR)
 as
    begin
        open mi_cursor for
            select capitan.capitanid, primernombre || ' ' || primerapellido || ' ' || segundoapellido as nombre, email, contrasena, telefono, numlicencia, fechacontratacion 
            from capitan
                inner join usuario
                on capitan.capitanid = usuario.capitanid;
    end;
/
--Obtener todos los DATOS LEGIBLES usuarios
Create or replace procedure getAllUsersLegibles (mi_cursor out SYS_REFCURSOR)
 as
    begin
        open mi_cursor for
            select primernombre,primerapellido,segundoapellido,email,contrasena,telefono from usuario;
    end;
/
--Obtener todos los vehiculos
Create or replace procedure getVehiculosLegibles (mi_cursor out SYS_REFCURSOR)
 as
    begin
        open mi_cursor for
            select placa,descripcion,cantidadocupantes,precioalquiler,tipo from vehiculo
            inner join tipo_vehiculo
            on vehiculo.tipovehiculoid = tipo_vehiculo.tipovehiculoid;
    end;
/
--Obtener todas las facturas
Create or replace procedure getFacturas (mi_cursor out SYS_REFCURSOR)
as
    begin
        open mi_cursor for
            select * from factura;
    end;
/
--Obtener todos los detalleFacturas
Create or replace procedure getdetalleFacturasLegibles (mi_cursor out SYS_REFCURSOR)
 as
    begin
        open mi_cursor for
            select detallefacturaid, usuario.usuarioid, primernombre ||' '|| primerapellido as nombrecompleto,
            vehiculo.placa,descripcion,tipo,precioalquiler  from detallefactura
            inner join alquiler
            on detallefactura.alquilerid = alquiler.alquilerid
                inner join usuario
                on alquiler.usuario_id = usuario.usuarioid
                    inner join vehiculo
                    on alquiler.placa = vehiculo.placa
                        inner join tipo_vehiculo
                        on vehiculo.tipovehiculoid = tipo_vehiculo.tipovehiculoid;
    end;
/
--Obtener todos los alquileres
Create or replace procedure getAlquileresLegibles(mi_cursor out SYS_REFCURSOR)
as
    begin
        open mi_cursor for
            select alquilerid, primernombre ||' '|| primerapellido as nombrecompleto,vehiculo.placa,
            fechainicio as "Fecha Inicio",to_char(fechainicio,'HH24:MI:SS') as "Hora Inicio",
            fechafin as "Fecha Fin",to_char(fechafin,'HH24:MI:SS') as "Hora Fin" from alquiler
                inner join usuario
                on alquiler.usuario_id = usuario.usuarioid
                 inner join vehiculo
                 on alquiler.placa = vehiculo.placa;
    end;
/
--Obtener todos los usuarios
Create or replace procedure getAllUsers (mi_cursor out SYS_REFCURSOR)
 as
    begin
        open mi_cursor for
            select * from usuario;
    end;
/
--Obtener todos los tipovehiculo
Create or replace procedure getTipoVehiculo (mi_cursor out SYS_REFCURSOR)
 as
    begin
        open mi_cursor for
            select * from tipo_vehiculo;
    end;
/
--Insertar un tipovehiculo
Create or replace procedure insertTipoVehiculo (pTipo in varchar2)
 as
    begin
        INSERT INTO tipo_vehiculo(tipovehiculoid, tipo)  VALUES (tipo_vehiculo_sec.nextval, pTipo);
    end;
/
--Insertar un Vehiculo
Create or replace procedure insertVehiculo (pPlaca varchar2,pDescripcion varchar2,pPocupantes number,pPrecioAlquiler number,pTipoVehiculo number)
 as
    begin
        INSERT INTO vehiculo(placa, descripcion, cantidadocupantes, precioalquiler, tipovehiculoid)
        VALUES (pPlaca, pDescripcion,pPocupantes,pPrecioAlquiler, pTipoVehiculo);
    end;
/
--Función para calcular el IVA
CREATE OR REPLACE FUNCTION IVA (pPRECIO NUMBER)
RETURN DECIMAL
IS
   TOTAL DECIMAL;
BEGIN
       TOTAL := pPRECIO+ (pPRECIO * 0.13);
       RETURN TOTAL;
END;
--SELECT precioalquiler, IVA(precioalquiler) AS "IMPUESTO" FROM vehiculo;
/
--Funcion para saber el vehículo más alquilado
SELECT STATS_MODE(placa) FROM alquiler;
/
--Función para calcular el IVA
CREATE OR REPLACE FUNCTION IVA (pPRECIO NUMBER)
RETURN DECIMAL
IS
   TOTAL DECIMAL;
BEGIN
       TOTAL := pPRECIO+ (pPRECIO * 0.13);
       RETURN TOTAL;
END;
--SELECT precioalquiler, IVA(precioalquiler) AS "IMPUESTO" FROM vehiculo;
/
--Funcion para saber el vehículo más alquilado
CREATE OR REPLACE PROCEDURE vehiculomasalquilado (mi_cursor OUT SYS_REFCURSOR)
AS
    BEGIN
      OPEN mi_cursor FOR
         SELECT STATS_MODE(placa) FROM alquiler;
    END;
/
CREATE OR REPLACE FUNCTION IMPRIMEXML
  RETURN SYS_REFCURSOR
    IS  
      MI_CURSOR SYS_REFCURSOR;
    BEGIN
      OPEN MI_CURSOR FOR
                     select XMLELEMENT ("FACTURA",
            XMLELEMENT ("ID",detallefacturaid),
            XMLELEMENT("USUARIOID", usuario.usuarioid),
            XMLELEMENT ("NOMBRE",primernombre ||' '|| primerapellido) ,
            XMLELEMENT ("PLACA",vehiculo.placa),
            XMLELEMENT ("DESCRIPCION",descripcion),
            XMLELEMENT ("TIPO",tipo),
            XMLELEMENT ("PRECIO",precioalquiler))
from detallefactura
            inner join alquiler
            on detallefactura.alquilerid = alquiler.alquilerid
                inner join usuario
                on alquiler.usuario_id = usuario.usuarioid
                    inner join vehiculo
                    on alquiler.placa = vehiculo.placa
                        inner join tipo_vehiculo
                        on vehiculo.tipovehiculoid = tipo_vehiculo.tipovehiculoid;
        RETURN MI_CURSOR; 
    END;
   
  --IMPRIMIR TEXTO EN CONSOLA
/*DECLARE
       REGISTROS SYS_REFCURSOR;
BEGIN
       REGISTROS := IMPRIMEXML;
       DBMS_SQL.return_result(REGISTROS);
END;*/
