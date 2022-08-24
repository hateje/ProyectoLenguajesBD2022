<?php

    function ValidarSesion()
    {       
        if($_SESSION["RolUsuario"] == null)
        {
            session_destroy();
            header("Location: ../index.php");
        }
    }

?>