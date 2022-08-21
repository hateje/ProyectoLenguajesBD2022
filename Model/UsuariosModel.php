<?php

    include_once "Conexion.php";

    function ConsultarUsuariosModel()
    {    
        $instancia = AbrirBaseDatos();
        $listaUsuarios = $instancia -> query("CALL ConsultarUsuarios();");
        CerrarBaseDatos($instancia);
        return $listaUsuarios;
    }


    function ConsultarUsuarioModel($Cedula)
    {    
        $instancia = AbrirBaseDatos();
        $Usuario = $instancia -> query("CALL ConsultarUsuario('$Cedula');");
        CerrarBaseDatos($instancia);
        return $Usuario;
    }


    function ConsultarRolesModel()
    {    
        $instancia = AbrirBaseDatos();
        $listaRoles = $instancia -> query("CALL ConsultarRoles();");
        CerrarBaseDatos($instancia);
        return $listaRoles;
    }


    function RegistrarUsuariosModel($cedula, $Nombre, $Correo, $Contrasenna, $Rol)
    {    
        $instancia = AbrirBaseDatos();
        $instancia -> query("CALL RegistrarUsuarios('$cedula', '$Nombre', '$Correo', '$Contrasenna', $Rol);");
        CerrarBaseDatos($instancia);
    }


    function ActualizarUsuariosModel($cedula, $Nombre, $Correo, $Contrasenna, $Rol)
    {    
        $instancia = AbrirBaseDatos();
        $instancia -> query("CALL ActualizarUsuario('$cedula', '$Nombre', '$Correo', '$Contrasenna', $Rol);");
        CerrarBaseDatos($instancia);
    }


    function EliminarUsuariosModel($cedula)
    {    
        $instancia = AbrirBaseDatos();
        $instancia -> query("CALL EliminarUsuario('$cedula');");
        CerrarBaseDatos($instancia);
    }

   //*************************************************** */ 


   function ConsultarUsuariosOracleModel()
   {    
       $instancia = AbrirBaseDatos();
       $mi_cursor = oci_new_cursor($instancia);
       $lista = oci_parse($instancia, 'BEGIN getAllUsers(:cursbv); END;');
       oci_bind_by_name($lista, ":cursbv", $mi_cursor, -1, OCI_B_CURSOR);
       
       oci_execute($lista);
       oci_execute($mi_cursor);
       CerrarBaseDatos($instancia);

       return $mi_cursor;
   }

   function ConsultarTipoVehiculoOracleModel()
   {    
       $instancia = AbrirBaseDatos();
       $mi_cursor = oci_new_cursor($instancia);
       $lista = oci_parse($instancia, 'BEGIN getTipoVehiculo(:cursbv); END;');
       oci_bind_by_name($lista, ":cursbv", $mi_cursor, -1, OCI_B_CURSOR);
       
       oci_execute($lista);
       oci_execute($mi_cursor);
       CerrarBaseDatos($instancia);

       return $mi_cursor;
   }
   

?>