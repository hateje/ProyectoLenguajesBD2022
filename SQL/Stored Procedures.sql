--Obtener todos los capitanes
Create or replace procedure getCapitanes (mi_cursor out SYS_REFCURSOR)
 as
    begin
        open mi_cursor for
            select * from capitan;
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
--Obtener todos los vehiculos
Create or replace procedure getVehiculos (mi_cursor out SYS_REFCURSOR)
 as
    begin
        open mi_cursor for
            select * from vehiculo;
    end;
/    
--Obtener todos los Alquileres
Create or replace procedure getAlquileres (mi_cursor out SYS_REFCURSOR)
 as
    begin
        open mi_cursor for
            select * from alquiler;
    end;
 /   
--Obtener todos los Facturas
Create or replace procedure getFacturas (mi_cursor out SYS_REFCURSOR)
 as
    begin
        open mi_cursor for
            select * from factura;
    end;
/    
--Obtener todos los detalleFacturas
Create or replace procedure getdetalleFacturas (mi_cursor out SYS_REFCURSOR)
 as
    begin
        open mi_cursor for
            select * from detallefactura;
    end;
