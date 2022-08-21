--Obtener todos los usuarios
Create or replace procedure getAllUsers (mi_cursor out SYS_REFCURSOR)
 as
    begin
        open mi_cursor for
            select * from usuario;
    end;
