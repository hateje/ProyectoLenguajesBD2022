<?php

    include_once '../Model/LoginModel.php';
    include_once 'ComponentesController.php';

    if(isset($_POST["btnLogin"]))
    {
        $cedula = $_POST["txtIdentificacion"];
        $contrasenna = $_POST["txtContrasenna"];
        
        $resultado = ValidarIngresoModel($cedula, $contrasenna);
    
        if($resultado -> num_rows > 0)
        {
            session_start();

            $item = mysqli_fetch_array($resultado);
            $_SESSION["NombreUsuario"] = $item["Nombre"];
            $_SESSION["RolUsuario"] = $item["IdRol"];

            $body = 'Estimado(a) ' . $item["Nombre"] . ' se le informa que se ha registrado un inicio de sesión en nuestro sistema...'; 
            //Notificar($item["Correo"], 'Inicio de sesión', $body);
            
            header("Location: inicio.php");
        }
    }

    if(isset($_POST["btnCerrarSesion"]))
    {
        session_start();

        session_destroy();
        header("Location: ../index.php");
    }

?>