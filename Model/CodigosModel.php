<?php

    include_once "Conexion.php";

    function ConsultarCodigosModel()
    {    
        $instancia = AbrirBaseDatos();
        $listaCodigos = $instancia -> query("CALL ConsultarCodigos();");
        CerrarBaseDatos($instancia);
    
        return $listaCodigos;
    }

?>