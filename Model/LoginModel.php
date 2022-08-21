<?php

    include_once "Conexion.php";

    function ValidarIngresoModel($cedula, $contrasenna)
    {    
        $instancia = AbrirBaseDatos();
        $usuario = $instancia -> query("CALL ValidarIngresoSP('$cedula', '$contrasenna');");
        CerrarBaseDatos($instancia);
        
        return $usuario;
    }

?>