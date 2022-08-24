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

    <title>Agregar Tipo Vehiculo</title>
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
                    <h2>Consultar Vehiculos Alquilados</h2>
                    <br />

                    <div class="row">

                        <div class="col">
                        </div>
                        <div class="col">
                            Tipo
                            <input type="text" name="txtFechaFinal" class="form-control" Value="" required>
                        </div>
                        <div class="col">
                            Tipo
                            <input type="text" name="txtHoraFinal" class="form-control" Value="" required>
                        </div>
                        <div class="col">
                        <br />
                            <input type="submit" name="btnConsultarAlquilados" Value="Consultar Alquilados" class="btn btn-info">
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