<?php 
    include_once "componentes.php"; 
    include_once "../Controller/UsuariosController.php"; 
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Start Bootstrap Template</title>
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/simple-sidebar.css" rel="stylesheet">

</head>

<body>
    <form action="" method="POST">

        <div class="d-flex" id="wrapper">

            <?php MostrarMenu(); ?>

            <div id="page-content-wrapper">

                <?php MostrarHeader(); ?>

                <div class="container-fluid">

                    <br /><br />

                    <div class="row">

                        <div class="col-1">
                        </div>
                        <div class="col-3">
                            Cédula
                            <input type="text" name="txtCedula" class="form-control" Value="" required>
                        </div>
                        <div class="col-3">
                            Contraseña
                            <input type="text" name="txtContrasenna" class="form-control" Value="" required>
                        </div>
                        <div class="col-3">
                            Nombre
                            <input type="text" name="txtNombre" class="form-control" Value="" required>
                        </div>

                    </div>

                    <br />

                    <div class="row">

                        <div class="col-1">
                        </div>

                        <div class="col-3">
                            Correo
                            <input type="text" name="txtCorreo" class="form-control" Value="" required>
                        </div>

                        <div class="col-3">
                            <label>Rol</label>
                            <select name="txtRol" class="form-control" required>
                                <?php
                                    ConsultarRoles();
                                ?>
                            </select>
                        </div>
                        <div class="col-3">
                            <br />
                            <input type="submit" name="btnRegistrar" Value="Registrar" class="btn btn-info">
                        </div>

                    </div>


                </div>

            </div>
        </div>

        <script src="../vendor/jquery/jquery.min.js"></script>
        <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="../js/simple-sidebar.js"></script>

    </form>
</body>

</html>