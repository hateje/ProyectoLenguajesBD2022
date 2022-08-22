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

    <div class="d-flex" id="wrapper">

        <?php MostrarMenu(); ?>

        <div id="page-content-wrapper">

            <?php MostrarHeader(); ?>

            <div class="container-fluid">


                <br />
                <br />
            <div class="table-responsive">
                <table id="tUsuarios" class="table table-hover table-bordered">
                    <thead>
                        <tr>
                            <th>Capitán ID</th>
                            <th>Nombre Capitán</th>
                            <th>Correo</th>
                            <th>Contraseña</th>
                            <th>Telefono</th>
                            <th>Licencia</th>
                            <th>Fecha de Contratación</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php ConsultarCapitanesOracle(); ?>
                    </tbody>
                </table>
            </div>
</div>
        </div>
    </div>

    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../js/simple-sidebar.js"></script>

</body>

</html>