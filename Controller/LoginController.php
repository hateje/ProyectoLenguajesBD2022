<?php

    include_once 'ComponentesController.php';


    if(isset($_POST["btnCerrarSesion"]))
    {
        session_start();

        session_destroy();
        header("Location: ../index.php");
    }

?>