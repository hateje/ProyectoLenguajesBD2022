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
                <h2>Vehículos</h2>
                <br />
            <div class="table-responsive">
                <table id="tUsuarios" class="table table-hover table-bordered">
                    <thead>
                        <tr>
                            <th>Placa</th>
                            <th>Descripción</th>
                            <th>Cantidad Ocupantes</th>
                            <th>Precio Alquiler</th>
                            <th>Tipo Vehiculo</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php ConsultarVehiculoOracle(); ?>
                    </tbody>
                </table>
                <a href="agregarVehiculo.php" class="btn btn-info">Agregar Vehículo</a>
            </div>
</div>
        </div>
    </div>

    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../js/simple-sidebar.js"></script>

</body>

</html>