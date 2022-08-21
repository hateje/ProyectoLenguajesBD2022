<?php
    include_once "../Controller/LoginController.php";
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>
    <form action="" method="POST">

        <div class="d-flex" id="wrapper">
            <div id="page-content-wrapper">

                <div class="container-fluid" style="margin-top:100px;">

                    <div class="row">
                        <div class="col-3">
                        </div>
                        <div class="col-2">
                            <br>
                            <label><b>Identificación:</b></label>
                        </div>
                        <div class="col-4">
                            <input type="text" id="txtIdentificacion" name="txtIdentificacion" value="" 
                            placeholder="Ingrese la identificación"
                            onblur="LlamarServicioApi_AJAX();" autocomplete="Off">
                        </div>
                        <div class="col-3">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-3">
                        </div>
                        <div class="col-2">
                            <br>
                            <label><b>Nombre Completo:</b></label>
                        </div>
                        <div class="col-4">
                            <input type="text" id="txtNombreCompleto" class="TonoGris" value="" readonly="true">
                        </div>
                        <div class="col-3">
                        </div>
                    </div>

                    <div class="row" id="divContrasenna" style="display: none;">
                        <div class="col-3">
                        </div>
                        <div class="col-2">
                            <br>
                            <label><b>Contraseña:</b></label>
                        </div>
                        <div class="col-4">
                            <input type="password" id="txtContrasenna" name="txtContrasenna" value="">
                        </div>
                        <div class="col-3">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-3">
                        </div>
                        <div class="col-6">
                            <input type="submit" id="btnLogin" name="btnLogin" value="Iniciar Sesión"
                                class="btn btn-info form-control" />
                        </div>
                        <div class="col-3">
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