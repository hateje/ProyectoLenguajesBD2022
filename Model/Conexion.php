<?php

    function AbrirBaseDatos()
    {
        $user = "adminProyecto";
        $password = "123";
        $database = "localhost/orcl";

        $conexion = oci_connect($user, $password, $database); 

        if (!$conexion) {    
            $m = oci_error();    
            echo $m['message'], "n";    
            exit; 
          } else {  
            return $conexion;
            }
    }
        



    function CerrarBaseDatos($conexion)
    {
        oci_close($conexion);
    }

?>