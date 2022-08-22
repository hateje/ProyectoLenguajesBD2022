CREATE OR REPLACE PROCEDURE getDetallarAlquiler(mi_cursor out SYS_REFCURSOR)
AS
Begin
        Open Mi_Cursor For
    SELECT u.primernombre, u.primerapellido, u.segundoapellido, vt.tipo, v.precioAlquiler, a.fechaalquiler, a. horainiciaalqui, a.horafinalalqui 
    FROM alquiler a
    INNER JOIN usuario u ON a.usuario_id= u.usuarioid
    INNER JOIN vehiculo v ON v.placa = a.placa
    INNER JOIN tipo_vehiculo vt ON v.tipovehiculoid= vt.tipovehiculoid; 
    End;
    
    VAR BOLSA_DETALLEALQUILER REFCURSOR;
EXECUTE getDetallarAlquiler (:BOLSA_DETALLEALQUILER);
PRINT BOLSA_DETALLEALQUILER;
--------------****************************-----------------------------
CREATE OR REPLACE PROCEDURE getVehiculosAlquilados(mi_cursor out SYS_REFCURSOR)
AS
Begin
        Open Mi_Cursor For

    End;
    
    --hacer cambio mañana
    
SELECT a.fechaalquiler, a. horainiciaalqui, a.horafinalalqui ,v.placa, v.cantidadocupantes, vt.tipo, a.fechaalquiler, a. horainiciaalqui, a.horafinalalqui 
FROM alquiler a
INNER JOIN vehiculo v ON v.placa = a.placa
INNER JOIN tipo_vehiculo vt ON v.tipovehiculoid= vt.tipovehiculoid; 

SELECT  TO_DATE('06:14', 'HH24:MI') FROM DUAL; 

CREATE OR REPLACE FUNCTION IVA