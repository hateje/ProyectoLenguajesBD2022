--Obtener todos los capitanes
Create or replace procedure getCapitanes (mi_cursor out SYS_REFCURSOR)
 as
    begin
        open mi_cursor for
            select * from capitan;
    end;
/
--Obtener todos los DATOS LEGIBLES capitanes
Create or replace procedure getCapitanesLegibles (mi_cursor out SYS_REFCURSOR)
 as
    begin
        open mi_cursor for
            select primernombre,primerapellido,segundoapellido,email,contrasena,telefono,capitan.capitanid,numlicencia,fechacontratacion from capitan
                inner join usuario
                on capitan.capitanid = usuario.capitanid;
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
--Obtener todos los DATOS LEGIBLES usuarios
Create or replace procedure getAllUsersLegibles (mi_cursor out SYS_REFCURSOR)
 as
    begin
        open mi_cursor for
            select primernombre,primerapellido,segundoapellido,email,contrasena,telefono from usuario;
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