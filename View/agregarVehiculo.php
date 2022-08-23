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

    <title>Agregar Vehiculo</title>
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
                
                    <br />
                    <h2>Agregar Vehículo</h2>
                    <br />

                    <div class="row">

                        <div class="col-1">
                        </div>
                        <div class="col-4">
                            Placa
                            <input type="text" name="txtPlaca" class="form-control" Value="" required>
                        </div>
                        <div class="col-4">
                            Descripción
                            <input type="text" name="txtDescripcion" class="form-control" Value="" required>
                        </div>
                        <div class="col-12">
                        </div>
                        <div class="col-1">
                        </div>
                        <div class="col-4">
                            Cantidad Ocupantes
                            <input type="number" name="txtOcupantes" class="form-control" Value="" required>
                        </div>
                        <div class="col-4">
                            Precio Alquiler
                            <input type="number" name="txtPrecioAlquiler" class="form-control" Value="" required>
                        </div>
                        <div class="col-12">
                        </div>
                        <div class="col-1">
                        </div>
                        <div class="col-4">
                            Tipo Vehículo
                            <input type="number" name="txtTipoVehiculo" class="form-control" Value="" required>
                        </div>
                        <div class="col-4">
                        <br />
                            <input type="submit" name="btnAgregarVehiculo" Value="Agregar" class="btn btn-info">
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