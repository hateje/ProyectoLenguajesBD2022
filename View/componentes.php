<?php

    include_once '../Controller/LoginController.php';
    include_once '../Controller/ComponentesController.php';

    function MostrarMenu()
    {
        /*session_start();
        ValidarSesion();
        
        $usuario = $_SESSION["NombreUsuario"];
*/
        echo 
        '
            <div class="bg-light border-right" id="sidebar-wrapper">
                <div class="sidebar-heading">
                </div>
                <div class="list-group list-group-flush">
                    <a href="Usuarios.php" class="list-group-item list-group-item-action bg-light">Usuarios</a>
                    <a href="Vehiculos.php" class="list-group-item list-group-item-action bg-light">Vehiculos</a>
                    
                </div>
            </div>
        ';
    }

    function MostrarHeader()
    {
        echo 
        '
            <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
            <button class="btn btn-primary" id="menu-toggle">Menu</button>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
                <li class="nav-item active">
                    
                <form action="" method="POST">
                    <input type="submit" value="Cerrar Sesión" name="btnCerrarSesion" class="btn btn-default">
                <form>
                
                </li>

            </ul>
            </div>
            </nav>
        ';
    }

?>